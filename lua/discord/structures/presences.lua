function discord.structures.presence(client, presence)
    presence.guild_id = nil
    presence.roles = nil
    presence.user = nil
    presence.nick = nil

    return presence
end