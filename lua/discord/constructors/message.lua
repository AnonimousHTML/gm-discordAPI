function discord.message(message)
    local message = message or {}

    function message.setText(text)
        message.content = tostring(text)
        return message
    end

    function message.setEmbed(embed)
        message.embed = embed
        return message
    end

    function message.setMessageReference(guild_id,message_id)
        message.message_reference = {guild_id = guild_id, message_id = message_id}
        return message
    end

    message._type = "message"

    return message
end