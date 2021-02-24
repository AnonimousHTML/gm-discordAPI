function discord.whmessage(message)
    local message = message or {}
    message.embeds = message.embeds or {}

    function message.setText(text)
        message.content = tostring(text)
        return message
    end

    function message.addEmbed(embed)
        message.embeds[#message.embeds + 1] = embed
        return message
    end

    function message.setMessageReference(guild_id,message_id)
        message.message_reference = {guild_id = guild_id, message_id = message_id}
        return message
    end

    message._type = "message"

    if message.embed
    then
        message.addEmbed(message.embed)
        message.embed = nil
    end

    return message
end