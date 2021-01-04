function discord.structures.channel(client, channel)
    channel.last_message_id = nil
    channel.last_pin_timestamp = nil

    function channel.send(msg, callback)
        client.sendMessage(channel.id, msg, callback)
    end

    function channel.setName(name, callback)
        client.setChannelName(channel.id, name, callback)
    end

    channel._type = "channel"
    return channel
end