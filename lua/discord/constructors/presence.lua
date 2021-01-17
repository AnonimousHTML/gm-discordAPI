function discord.presence()
    local presence = {status = "online", afk = false, game = "null", since = 0}

    function presence.setStatus(status)
        presence.status = status
        return presence
    end

    function presence.setGame(name)
        presence.game = { name = name, type = 0 }
        return presence
    end

    function presence.setCompeting(name)
        presence.game = { name = name, type = 5}
        return presence
    end

    function presence.setStreaming(details, url)
        presence.game = { name = details, url = url, type = 1 }
        return presence
    end

    function presence.setListening(name, url)
        presence.game = { name = name, url = url, type = 2 }
        return presence
    end

    return presence
end