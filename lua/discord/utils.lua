local escape_markdown = {
    {"__", "\\__"},
    {"```", "\\`\\`\\`"},
    {"||", "\\||"},
}

function discord.escapeMarkdown(str)
    for k, v in ipairs(escape_markdown) do
        str = string.gsub(str, v[1], v[2])
    end

    return str
end

function discord.codeBlock(str, lang)
    return "```" .. (lang or "") .. "\n" .. string.gsub(str, "```", "\\`\\`\\`") .. "\n```"
end

local band = bit.band

function discord.hasPermission(bits, permission)
    return (band(bits, discord.enums.permissions.ADMINISTRATOR) == discord.enums.permissions.ADMINISTRATOR) or (band(bits, permission) == permission)
end

function discord.timestamp(time)
    return os.date("!%Y-%m-%dT%H:%M:%S+00:00")
end

function discord.hyperlink(url, linktext)
    return "[" .. linktext .. "](" .. url .. ")"
end

function discord.mentionRole(id)
    return "<@&" .. discord.resolver.roleID(id) .. ">"
end

function discord.mentionUser(id)
    return "<@" .. discord.resolver.userID(id) .. ">"
end

function discord.mentionChannel(id)
    return "<#" .. discord.resolver.channelID(id) .. ">"
end
