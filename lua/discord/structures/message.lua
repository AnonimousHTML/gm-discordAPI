function discord.structures.message(client, message)
    if message.guild_id and message.member == nil then return end
    if message.author == nil then return end
    message.dm = message.guild_id == nil

    if message.dm then
        local channel = {}
        channel.id = message.channel_id
        channel.name = message.author.username
        channel._type = "channel"

        message.channel = channel

        function message.author.send(msg,callback)
            client.sendMessageDM(message.author.id, msg, callback)
        end
    else
        local guild = client.guilds[message.guild_id]

        message.guild = guild
        message.channel = guild.channels[message.channel_id]

        message.member = guild.members[message.author.id]
        if message.member == nil then return end
        message.author = message.member.user
    end

    for k, v in ipairs(message.embeds) do
        message.embeds[k] = discord.messageEmbed(v)
    end

    if message.referenced_message then
        message.referenced_message = discord.structures.message(client, message.referenced_message)
    end

    function message.delete(callback)
        client.deleteMessage(message.channel_id, message.id, callback)
    end

    function message.edit(msg, callback)
        client.editMessage(message.channel_id, message.id, callback)
    end

    function message.pin(callback)
        client.pinMessage(message.channel_id, message.id, callback)
    end

    function message.unpin(callback)
        client.unpinMessage(message.channel_id, message.id, callback)
    end

    function message.react(emoji, callback)
        client.createReaction(message.channel_id, message.id, emoji, callback)
    end

    function message.reply(msg, callback)
        client.sendMessage(message.channel_id, discord.resolver.message(msg).setMessageReference(message.guild_id,message.id), callback)
    end

    message._type = "message"

    return message
end