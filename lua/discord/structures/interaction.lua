local function parseInteractionData(data, guild)
    for k, v in pairs(data) do
        if istable(v) then
            v = parseInteractionData(v, guild)
            continue
        end

        if k ~= "value" then continue end

        local dataType = type(v)
        data.type = dataType

        if dataType ~= "string" then continue end

        -- I do not know any other solution
        local member = guild.members[v]

        if member then
            data[k] = member
            data.type = "user"
            continue
        end

        local channel = guild.channels[v]

        if channel then
            data[k] = channel
            data.type = "channel"
            continue
        end

        local role = guild.roles[v]

        if role then
            data[k] = role
            data.type = "role"
            continue
        end
    end

    return data
end

function discord.structures.userInteraction(client, interaction)
    local guild = client.guilds[interaction.guild_id]
    if not guild then return end
    interaction.channel = guild.channels[interaction.channel_id]
    interaction.member = discord.structures.guildMember(client, interaction.member, interaction.guild_id)

    function interaction.responce(type, message, callback)
        client.HTTPRequest("interactions/" .. interaction.id .. "/" .. interaction.token .. "/callback", "POST", {
            type = type,
            data = message
        }, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end)
    end

    function interaction.editResponce(params, callback)
        client.HTTPRequest("webhooks/" .. client.user.id .. "/" .. interaction.token .. "/messages/@original", "PATCH", params, callback and function(code, data, headers)
            callback(code ~= 200, data, headers)
        end)
    end

    function interaction.deleteResponce()
        client.HTTPRequest("webhooks/" .. client.user.id .. "/" .. interaction.token .. "/messages/@original", "DELETE", {}, callback and function(code, data, headers)
            callback(code ~= 204, data, headers)
        end)
    end

    interaction.data = parseInteractionData(interaction.data, guild)

    return interaction
end

function discord.structures.interaction(client, interaction, global)
    if global then
        function interaction.delete(callback)
            client.deleteGlobalCommand(interaction.id, callback)
        end
    else
        function interaction.delete()
            client.deleteGuildCommand(interaction.id, interaction.guild_id, callback)
        end
    end

    return interaction
end