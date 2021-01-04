discord.resolver = {}

function discord.resolver.message(obj)
    if istable(obj) then
        if obj._type == "embed"
        then
            return discord.message().setEmbed(obj)
        end

        return obj
    end

    return discord.message().setText(tostring(obj))
end

function discord.resolver.messageID(obj)
    if istable(obj) and obj._type == "message" then
        return obj.id
    end

    return tostring(obj)
end

function discord.resolver.userID(obj)
    if istable(obj) then
        if obj._type == "user"
        then
            return obj.id
        elseif obj._type == "member"
        then
            return obj.user.id
        end
    end

    return tostring(obj)
end

function discord.resolver.channelID(obj)
    if istable(obj) and obj._type == "channel" then
        return obj.id
    end

    return tostring(obj)
end