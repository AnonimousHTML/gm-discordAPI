local function numberTocolor(color)
    color = color == 0 and 0xFFFFFF or color or 0xFFFFFF
    local b, g, r = color % 256, math.floor(color / 256) % 256, math.floor(color / 65536)

    return Color(r, g, b)
end

function discord.structures.guild(client, guild)
    client.guilds[guild.id] = guild
    local roles = {}

    for k, role in ipairs(guild.roles)
    do
        role.color = numberTocolor(role.color)
        roles[role.id] = role
    end

    guild.roles = roles
    local members = {}

    for k, v in ipairs(guild.members)
    do
        members[v.user.id] = discord.structures.guildMember(client, v, guild.id)
    end

    guild.members = members
    local channels = {}

    for k, v in ipairs(guild.channels)
    do
        channels[v.id] = discord.structures.channel(client, v)
    end

    for k,v in ipairs(guild.presences)
    do
        local userID = 0
        guild.presences[v.user.id] = discord.structures.presence(client, v)
        guild.presences[k] = nil
    end

    guild.channels = channels

    guild._type = "guild"

    return guild
end