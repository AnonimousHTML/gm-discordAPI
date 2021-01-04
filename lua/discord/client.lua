local max_table_size = 9007199254740991 -- 2^53-1
local function queue()
    local metatable = {}

    metatable.push = function(self, value)
        if value == nil then return end
        if self.count >= max_table_size then error("queue overflow") end

        self.last = (self.last + 1) % max_table_size
        self.count = self.count + 1
        self[self.last] = value
    end

    metatable.pop = function(self)
        if self.count == 0 then return end

        self.first = (self.first + 1) % max_table_size
        self.count = self.count - 1

        local out = self[self.first]
        self[self.first] = nil

        return out
    end

    return setmetatable({
        first = 0,
        last = 0,
        count = 0,
    }, {__index = metatable})
end

local JSONToTable = util.JSONToTable

function discord.client()
    local client = {}
    client.ws = GWSockets.createWebSocket("wss://gateway.discord.gg/?v=6&encoding=json")
    client.authed = false

    client.user = {}
    client.guilds = {}
    client.private_channels = {}

    client.events = {}
    client.sequence = 1
    client.sessionID = nil

    client.ratelimiter = {
        {
            limit = 5,
            remaining = 5,
            reset = CurTime() + 5,
            reset_delay = 5,
            requests = queue()
        },
        -- default
        {
            limit = 1,
            remaining = 1,
            reset = CurTime() + 1,
            reset_delay = 1,
            requests = queue()
        },
        -- reaction
        {
            limit = 5,
            remaining = 5,
            reset = CurTime() + 5,
            reset_delay = 5,
            requests = queue()
        },
        -- webhook
        {
            limit = 5,
            remaining = 5,
            reset = CurTime() + 5,
            reset_delay = 5,
            requests = queue()
        },
        -- message
        {
            limit = 5,
            remaining = 5,
            reset = CurTime() + 5,
            reset_delay = 5,
            requests = queue()
        },
        -- get message
        {
            limit = 5,
            remaining = 5,
            reset = CurTime() + 5,
            reset_delay = 5,
            requests = queue()
        },
        -- kick
        {
            limit = 10,
            remaining = 10,
            reset = CurTime() + 10,
            reset_delay = 10,
            requests = queue()
        },
        -- role, nick
        {
            limit = 10,
            remaining = 10,
            reset = CurTime() + 15,
            reset_delay = 15,
            requests = queue()
        },
        -- channel
    }

    function client.on(eventname, id, fn)
        client.events[eventname] = client.events[eventname] or {}
        client.events[eventname][id] = fn
    end

    function client.emitEvent(eventname, ...)
        if not client.events[eventname] then return end

        for k, v in pairs(client.events[eventname]) do
            v(...)
        end
    end

    function client.ws:onMessage(json)
        local payload = JSONToTable(json)

        if payload.s then
            client.sequence = payload.s
        end

        if payload.op == 0 then
            if payload.t == "READY" then
                client.sessionID = payload.d.session_id
                client.ACKReceived = nil
                client.authed = true
                client.user = payload.d.user

                function client.user.setAvatar(imageData, callback)
                    client.HTTPRequest("users/@me", "PATCH", {
                        avatar = imageData
                    }, callback)
                end

                function client.user.setUserName(username, callback)
                    client.HTTPRequest("users/@me", "PATCH", {
                        username = username
                    }, callback)
                end
            elseif payload.t == "GUILD_CREATE" then
                local guild = payload.d
                client.guilds[guild.id] = discord.structures.guild(client, guild)

                if not client.ready then
                    client.ready = true

                    timer.Simple(0.5, function()
                        client.emitEvent("ready")
                    end)
                end

                client.ws:write([[{"op": 8,"d": {"guild_id": "]] .. guild.id .. [[","query": "","limit": 0,"presences":true}}]])
            elseif payload.t == "CHANNEL_CREATE" then
                local channel = discord.structures.channel(client, payload.d)

                if payload.d.guild_id then
                    local guild = client.getGuildByID(payload.d.guild_id, true)
                    guild.guild_hashes = payload.d.guild_hashes
                    channel.guild_hashes = nil
                    guild.channels[channel.id] = channel
                end

                client.emitEvent("channelCreate", channel)
            elseif payload.t == "CHANNEL_DELETE" then
                if payload.d.guild_id then
                    local guild = client.getGuildByID(payload.d.guild_id, true)
                    guild.guild_hashes = payload.d.guild_hashes
                    local channel = guild.channels[payload.d.id]
                    guild.channels[payload.d.id] = nil
                    channel.setName = nil
                    channel.send = nil
                    client.emitEvent("channelDelete", channel)
                end
            elseif payload.t == "CHANNEL_UPDATE" then
                local channel = discord.structures.channel(client, payload.d)

                if payload.d.guild_id then
                    local guild = client.getGuildByID(payload.d.guild_id, true)
                    guild.guild_hashes = payload.d.guild_hashes
                    channel.guild_hashes = nil
                    guild.channels[channel.id] = channel
                end

                client.emitEvent("channelUpdate", channel)
            elseif payload.t == "MESSAGE_CREATE" then
                if payload.d.type == 0 then
                    local message = discord.structures.message(client, payload.d)

                    if message then
                        client.emitEvent("message", discord.structures.message(client, payload.d))
                    end
                elseif payload.d.type == 6 then
                    client.emitEvent("messagePinned", payload.d.message_reference)
                end
            elseif payload.t == "MESSAGE_UPDATE" then
                local message = discord.structures.message(client, payload.d)

                if message then
                    client.emitEvent("messageUpdate", discord.structures.message(client, payload.d))
                end
            elseif payload.t == "TYPING_START" then
                local guild = client.getGuildByChannelID(payload.d.channel)

                if guild then
                    payload.d.guild_id = guild.id
                    payload.d.member = client.getMemberByID(payload.d.guild_id, client.user.id)
                    payload.d.channel = guild.channels[payload.d.channel]
                else
                    payload.d.channel = {
                        id = payload.d.channel
                    }

                    function payload.d.channel.send(msg, callback)
                        client.sendMessage(payload.d.channel, msg, callback)
                    end
                end

                client.emitEvent("typingStart", payload.d)
            elseif payload.t == "GUILD_ROLE_UPDATE" then
                local role = payload.d.role
                local guild = client.getGuildByID(payload.d.guild_id, true)
                guild.guild_hashes = payload.d.guild_hashes
                guild.roles[role.id] = role
            elseif payload.t == "GUILD_MEMBER_ADD" then
                local guild = client.getGuildByID(payload.d.guild_id, true)
                local member = discord.structures.guildMember(client, payload.d, payload.d.guild_id)

                if guild.members[payload.d.user.id] == nil then
                    client.emitEvent("guildMemberAdd", guild, member)
                end

                guild.members[payload.d.user.id] = member
            elseif payload.t == "GUILD_MEMBERS_CHUNK" then
                local guild = client.getGuildByID(payload.d.guild_id)
                if guild == nil then return end

                for k, v in ipairs(payload.d.members) do
                    guild.members[v.user.id] = discord.structures.guildMember(client, v, payload.d.guild_id)
                end
            elseif payload.t == "GUILD_MEMBER_UPDATE" then
                local guild = client.getGuildByID(payload.d.guild_id, true)
                local member = discord.structures.guildMember(client, payload.d, payload.d.guild_id)
                guild.members[payload.d.user.id] = member
                client.emitEvent("guildMemberUpdate", guild, member)
            elseif payload.t == "GUILD_MEMBER_REMOVE" then
                local guild = client.getGuildByID(payload.d.guild_id, true)
                client.emitEvent("guildMemberRemove", guild, guild.members[payload.d.user.id])
                guild.members[payload.d.user.id] = nil
            elseif payload.t == "PRESENCE_UPDATE" then
                local guild = client.getGuildByID(payload.d.guild_id, true) 
                local userID = payload.d.user.id

                guild.presences[userID] = discord.structures.presence(client, payload.d)

                client.emitEvent("presenceUpdate", guild, payload.d)
            elseif payload.t == "MESSAGE_REACTION_ADD" then
                local reaction = payload.d
                reaction.member = client.getMemberByID(reaction.guild_id, reaction.user_id)

                function reaction.deleteReaction(callback)
                    client.deleteReaction(reaction.channel, reaction.message_id, reaction.user_id, reaction.emoji.name, callback)
                end

                function reaction.react(emoji, callback)
                    client.createReaction(reaction.channel, reaction.message_id, emoji)
                end

                client.emitEvent("messageReactionAdd", payload.d)
            elseif payload.t == "MESSAGE_REACTION_REMOVE" then
                local reaction = payload.d
                reaction.member = client.getMemberByID(reaction.guild_id, reaction.user_id)
                client.emitEvent("messageReactionRemove", payload.d)
            elseif payload.t == "INTERACTION_CREATE" then
                client.emitEvent("interactionCreate", discord.structures.userInteraction(client, payload.d))
            end
        elseif payload.op == 7 then
            client.reconnect()
        elseif payload.op == 10 then
            if client.sessionID == nil then
                timer.Create("discord" .. client.uid .. "heartbeat", payload.d.heartbeat_interval / 1000, 0, function()
                    if client.ACKReceived == false then
                        client.reconnect()
                    end

                    client.ACKReceived = false
                    client.ws:write([[{"op":1,"d":]] .. client.sequence .. [[}]])
                end)

                hook.Add("Think", "discord" .. client.uid .. "ratelimiter", function()
                    for i = 1, #client.ratelimiter do
                        local ratelimiter = client.ratelimiter[i]
                        local requests = ratelimiter.requests

                        if ratelimiter.reset < CurTime() then
                            ratelimiter.remaining = ratelimiter.limit
                            ratelimiter.reset = CurTime() + ratelimiter.reset_delay + 0.5
                        end

                        if ratelimiter.remaining == 0 then return end
                        local requestCount = requests.count
                        if ratelimiter.remaining == ratelimiter.limit and requestCount == 0 then ratelimiter.reset = CurTime() + ratelimiter.reset_delay + 0.5 end

                        for i = 1, math.min(ratelimiter.remaining, requestCount) do
                            CHTTP(requests:pop())
                            ratelimiter.remaining = ratelimiter.remaining - 1
                        end

                    end
                end)

                client.ws:write([[{"op":2,"d":{"token":"]] .. client.token .. [[","properties":{"$os":"linux","$browser":"gmod-dapi","$device":"gmod-dapi"}}}]])
            else
                client.ws:write([[{"op":6,"d":{"token":"]] .. client.token .. [[","session_id":"]] .. client.sessionID .. [[","seq":]] .. client.sequence .. [[}}]])
            end
        elseif payload.op == 9 then
            client.sessionID = nil
            timer.Simple(5, client.reconnect)
        elseif payload.op == 11 then
            client.ACKReceived = true
        end
    end

    function client.ws:onDisconnected()
        client.destroy()
        client.emitEvent("close")

        if client.autoreconnect then
            client.reconnect()
        end
    end

    function client.ws:onError(errMessage)
        client.destroy()
        error(errMessage)
        client.emitEvent("error", errMessage)

        if client.autoreconnect then
            client.reconnect()
        end
    end

    function client.login(token)
        client.token = token
        client.authed = false
        client.uid = util.CRC(client.token)
        client.ws:open()
    end

    function client.destroy()
        timer.Remove("discord" .. client.uid .. "heartbeat")
        timer.Remove("discord" .. client.uid .. "ratelimiter")
        hook.Remove("Think", "discord" .. client.uid .. "ratelimiter")

        if client and client.ws:isConnected() then
            client.ws:closeNow()
        end
    end

    function client.reconnect()
        client.destroy()
        client.login(client.token)
    end

    function client.enableAutoReconnect()
        client.autoreconnect = true
    end

    function client.getGuildByID(guild_id, safe)
        local guild = client.guilds[guild_id]

        if safe then
            guild = guild or {
                guild_hashes = {},
                channels = {},
                voice_states = {},
                features = {},
                members = {},
                presences = {}
            }
        end

        return client.guilds[guild_id]
    end

    function client.getMemberByID(guild_id, member_id)
        local guild = client.getGuildByID(guild_id, true)

        return guild.members[member_id]
    end

    function client.getEmojyByName(guild_id, emoji_name)
        local guild = client.getGuildByID(guild_id, true)

        for k, v in ipairs(guild.emojis) do
            if v.name == emoji_name then return v end
        end
    end

    function client.getRoleByName(guild_id, role_name)
        local guild = client.getGuildByID(guild_id)
        if not guild then return end

        for k, v in pairs(guild.roles) do
            if v.name == role_name then return v end
        end
    end

    function client.getRoleByID(guild_id, role_id)
        local guild = client.getGuildByID(guild_id)
        if not guild then return end

        return guild.roles[role_id]
    end

    function client.getGuildByChannelID(channel)
        for k, guild in pairs(client.guilds) do
            for k, v in pairs(guild.channels) do
                if v.id == channel then return guild end
            end
        end
    end


    function client.sendMessage(channel, msg, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/messages", "POST", discord.resolver.message(msg), callback and function(code, data, headers)
            local error = code ~= 200

            if not error then
                local guild = client.getGuildByChannelID(data.channel)

                if guild then
                    data.guild_id = guild.id
                    data.member = client.getMemberByID(data.guild_id, client.user.id)
                end

                data = discord.structures.message(client, data)
            end

            callback(error, data, headers)
        end, 4)
    end

    function client.getMessage(channel, msg, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/messages/" .. discord.resolver.messageID(msg), "GET", {}, callback and function(code, data, headers)
            local error = code ~= 200

            if not error then
                local guild = client.getGuildByChannelID(data.channel_id)

                if guild != nil then
                    data.guild_id = guild.id
                    data.member = client.getMemberByID(data.guild_id, client.user.id)
                    data.channel = client.getMemberByID(data.guild_id, client.user.id)
                end

                data = discord.structures.message(client, data)
            end

            callback(error, data, headers)
        end, 5)
    end

    function client.editMessage(channel, message, msg, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/messages/" .. discord.resolver.messageID(message), "PATCH", discord.resolver.message(msg), callback and function(code, data, headers)
            local error = code ~= 200

            if not error then
                data.guild_id = client.getGuildByChannelID(data.channel).id
                data = discord.structures.message(client, data)
            end

            callback(error, data, headers)
        end, 4)
    end

    function client.deleteMessage(channel, msg, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/messages/" ..  discord.resolver.messageID(msg), "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 4)
    end

    function client.createReaction(channel, msg, emoji, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/messages/" .. discord.resolver.messageID(msg) .. "/reactions/" .. discord.structures.emoji(emoji, true) .. "/@me", "PUT", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 2)
    end

    function client.deleteReaction(channel, msg, user, emoji, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/messages/" .. discord.resolver.messageID(msg) .. "/reactions/" .. discord.structures.emoji(emoji, true) .. "/" .. discord.resolver.userID(user), "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 2)
    end

    function client.deleteAllReactions(channel, msg, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/messages/" .. discord.resolver.messageID(msg) .. "/reactions", "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 2)
    end

    function client.pinMessage(channel, msg, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/pins/" .. discord.resolver.messageID(msg), "PUT", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 4)
    end

    function client.unpinMessage(channel, msg, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/pins/" .. discord.resolver.messageID(msg), "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 4)
    end

    function client.createDM(user, callback)
        local user_id = discord.resolver.userID(user)

        if client.private_channels[user_id] != nil
        then
            return callback(error, client.private_channels[user_id], {})
        end

        client.HTTPRequest("/users/@me/channels","POST", {recipient_id = user_id}, function(code, data, headers)
            local error = code ~= 200
            if not error
            then
                data = discord.structures.channel(client, data)
                client.private_channels[user_id] = data
            end
            callback(error, data, headers)
        end)
    end

    function client.sendMessageDM(user, msg, callback)
        client.createDM(user, function(error,data)
            data.send(msg, callback)
        end)
    end

    function client.kickMember(guild_id, user, callback)
        client.HTTPRequest("guilds/" .. guild_id .. "/members/" .. discord.resolver.userID(user), "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 6)
    end

    function client.banMember(guild_id, user, reason, callback)
        client.HTTPRequest("guilds/" .. guild_id .. "/bans/" .. discord.resolver.userID(user), "PUT", {
            reason = reason
        }, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, false)
    end

    function client.unbanMember(guild_id, user, callback)
        client.HTTPRequest("guilds/" .. guild_id .. "/bans/" .. discord.resolver.userID(user), "DELETE", {
            d = "null"
        }, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, false)
    end

    function client.getBanList(guild_id, callback)
        client.HTTPRequest("guilds/" .. guild_id .. "/bans", "GET", {}, callback and function(code, data, headers)
            callback(code ~= 200, data, headers)
        end)
    end

    function client.addRole(guild_id, user, role, callback)
        local role_id = role

        if istable(role) and role.id then
            role_id = role.id
        end

        client.HTTPRequest("guilds/" .. guild_id .. "/members/" .. discord.resolver.userID(user) .. "/roles/" .. role_id, "PUT", {
            d = "null"
        }, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 7)
    end

    function client.removeRole(guild_id, user, role, callback)
        local role_id = role

        if istable(role) and role.id then
            role_id = role.id
        end

        client.HTTPRequest("guilds/" .. guild_id .. "/members/" .. discord.resolver.userID(user) .. "/roles/" .. role_id, "DELETE", {
            d = "null"
        }, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 7)
    end

    function client.setMemberNick(guild_id, user, nick, callback)
        client.HTTPRequest("guilds/" .. guild_id .. "/members/" .. discord.resolver.userID(user), "PATCH", {
            nick = nick
        }, callback, 7)
    end

    function client.setNick(guild_id, nick, callback)
        client.HTTPRequest("guilds/" .. guild_id .. "/members/@me/nick", "PATCH", {
            nick = nick
        }, callback, 7)
    end

    function client.setChannelName(channel, name, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel), "PATCH", {
            name = name
        }, callback, 8)
    end

    function client.getInvites(guild_id, callback)
        client.HTTPRequest("guilds/" .. guild_id .. "/invites", "GET", {}, callback and function(code, data, headers)
            callback(code ~= 200, data, headers)
        end, false)
    end

    function client.deleteInvite(invite_code, callback)
        client.HTTPRequest("invites/" .. invite_code, "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 200, data, headers)
        end, false)
    end

    function client.createWebhook(channel, name, avatar, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/webhooks", "POST", {
            name = name,
            avatar = avatar
        }, callback and function(code, data, headers)
            callback(code ~= 200, data, headers)
        end, false)
    end

    function client.getChannelWebhooks(channel, callback)
        client.HTTPRequest("channels/" .. discord.resolver.channelID(channel) .. "/webhooks", "GET", {}, callback and function(code, data, headers)
            local error = code ~= 200

            if not error then
                for k, v in ipairs(data) do
                    data[k] = discord.structures.webhook(client, v)
                end
            end

            callback(error, data, headers)
        end, false)
    end

    function client.deleteWebhook(webhook_id, callback)
        client.HTTPRequest("webhooks/" .. webhook_id, "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 200, data, headers)
        end, false)
    end

    function client.executeWebhook(webhook_id, webhook_token, params, callback)
        client.HTTPRequest("webhooks/" .. webhook_id .. "/" .. webhook_token, "POST", params, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, 3)
    end

    function client.createGlobalCommand(command, callback)
        client.HTTPRequest("/applications/" .. client.user.id .. "/commands", "POST", command, callback and function(code, data, headers)
            local error = code ~= 200

            if not error then
                data = discord.structures.interaction(client, data, true)
            end

            callback(error, data, headers)
        end, false)
    end

    function client.editGlobalCommand(command, command_id, callback)
        client.HTTPRequest("/applications/" .. client.user.id .. "/commands/" .. command_id, "PATCH", command, callback and function(code, data, headers)
            local error = code ~= 200

            if not error then
                data = discord.structures.interaction(client, data, true)
            end

            callback(error, data, headers)
        end, false)
    end

    function client.deleteGlobalCommand(command_id, callback)
        client.HTTPRequest("/applications/" .. client.user.id .. "/commands/" .. command_id, "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, false)
    end

    function client.createGuildCommand(command, guild_id, callback)
        client.HTTPRequest("/applications/" .. client.user.id .. "/guilds/" .. guild_id .. "/commands", "POST", command, callback and function(code, data, headers)
            local error = code ~= 200

            if not error then
                data.guild_id = guild_id
                data = discord.structures.interaction(client, data, true)
            end

            callback(error, data, headers)
        end, false)
    end

    function client.editGuildCommand(command, guild_id, command_id, callback)
        client.HTTPRequest("/applications/" .. client.user.id .. "/guilds/" .. guild_id .. "/commands/" .. command_id, "PATCH", command, callback and function(code, data, headers)
            local error = code ~= 200

            if not error then
                data.guild_id = guild_id
                data = discord.structures.interaction(client, data, true)
            end

            callback(error, data, headers)
        end, false)
    end

    function client.deleteGuildCommand(guild_id, command_id, callback)
        client.HTTPRequest("/applications/" .. client.user.id .. "/guilds/" .. guild_id .. "/commands/" .. command_id, "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end, false)
    end
    function client.HTTPRequest(endpoint, method, postdata, callback, rate_limiter_id)
        local request = {
            method = method,
            url = "https://discordapp.com/api/v6/" .. endpoint,
            headers = {
                ["Authorization"] = "Bot " .. client.token,
                ["Content-Type"] = "application/json"
            },
            body = util.TableToJSON(postdata),
            success = callback and function(code, json, headers)
                callback(code, util.JSONToTable(json), headers)
            end,
            failed = error
        }

        if rate_limiter_id == false then return CHTTP(request) end

        if rate_limiter_id == nil then
            rate_limiter_id = 1
        end

        client.ratelimiter[rate_limiter_id].requests:push(request)
    end

    return client
end