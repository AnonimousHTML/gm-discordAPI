function discord.structures.guildMember(client, member, guild_id)
    local color = color_white

    member.user = discord.structures.user(client, member.user)

    for k, v in ipairs(member.roles)
    do
        local role = client.guilds[guild_id].roles[v]
        if not role
        then continue end

        if role.hoist
        then
            color = role.color
        end
    end

    member.color = color
    member.nick = member.nick or member.user.username

    function member.fetchRoles()
        local roles = {}

        for k, v in ipairs(member.roles)
        do
            local role = client.guilds[guild_id].roles[v]
            if not role
            then continue end
            roles[k] = role
        end

        return roles
    end

    function member.hasPermission(permission)
        for k, v in ipairs(member.roles)
        do
            local role = client.guilds[guild_id].roles[v]
            if not role
            then continue end
            if discord.hasPermission(role.permissions, permission) then return true end
        end
        return false
    end

    function member.kick(callback)
        client.KickMember(guild_id, member.user.id, callback)
    end

    function member.ban(reason, callback)
        client.BanMember(guild_id, member.user.id, callback)
    end

    function member.setNick(nick, callback)
        client.HTTPRequest("guilds/" .. guild_id .. "/members/" .. member.user.id, "PATCH", {
            nick = nick
        }, callback)
    end

    local guild = client.guilds[guild_id]
    function member.getPresence()
        return guild.presences[member.user.id]
    end

    member.send = member.user.send

    member._type = "member"
    return member
end
