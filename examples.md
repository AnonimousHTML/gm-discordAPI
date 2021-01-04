```lua
if discordClient
then
    discordClient.destroy()
end

discordClient = discord.client()
discordClient.enableAutoReconnect()

discordClient.login(token)

discordClient.on("message","ping-pong-textOnly",function(message)
    if message.author.bot then return end

    if message.content == "ping"
    then
        message.reply("Pong!")
    end
end)
```  
```lua
if discordClient
then
    discordClient.destroy()
end

discordClient = discord.client()
discordClient.enableAutoReconnect()

discordClient.login(token)

discordClient.on("message","ping-pong-text+embedVersion",function(message)
    if message.author.bot then return end

    if message.content == "ping"
    then
        message.reply(
            discord.message()
            .setText("Pong!")
            .setEmbed(
                discord.messageEmbed()
                .setImage("https://media1.tenor.com/images/40fac3c55a73e15ef82705ab5d51245d/tenor.gif?itemid=16894549")
                .setColor(Color(255,255,254))
            )
        )
    end
end)

discordClient.login(token)
```
