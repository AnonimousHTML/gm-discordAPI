function discord.structures.user(client, user)
    function user.avatarURL(size, ext)
        return "https://cdn.discordapp.com/avatars/" .. user.id .. "/" .. user.avatar .. (ext and "." .. ext or "") .. (size and "?size=" .. 2 ^ math.floor(math.log(size, 2)) or "")
    end

    function user.send(msg,callback)
        client.sendMessageDM(user.id, msg, callback)
    end

    return user
end