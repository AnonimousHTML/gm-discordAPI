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

function discord.resolver.guildID(obj)
    if istable(obj) and obj._type == "guild" then
        return obj.id
    end

    return tostring(obj)
end

function discord.resolver.roleID(obj)
    if istable(obj) and obj._type == "role" then
        return obj.id
    end

    return tostring(obj)
end


function discord.resolver.channelID(obj)
    if istable(obj) and obj._type == "channel" then
        return obj.id
    end

    return tostring(obj)
end

function discord.resolver.colorToInt(color)
    color = color or color_white
    return 65536 * color.r + 256 * color.g + color.b
end

function discord.resolver.intToColor(color)
    color = color == 0 and 0xFFFFFF or color or 0xFFFFFF
    return Color(math.floor(color / 65536), math.floor(color / 256) % 256, color % 256)
end