# ping-pong
```lua
local token = ""

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
# ping-pong + embed
```lua
local token = ""

if discordClient
then
    discordClient.destroy()
end

discordClient = discord.client()
discordClient.enableAutoReconnect()
discordClient.login(token)

discordClient.on("message","ping-pong-text+embed",function(message)
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
# simple chat relay
```lua
[SERVER]
local token = ""

util.AddNetworkString("chatPrint")

-- This is a bad implementation of chatprint it is written just for example
local function chatPrint(...)
    net.Start("chatPrint")
        net.WriteTable({...})
    net.Broadcast()
end

if discordClient
then
    discordClient.destroy()
end

discordClient = discord.client()
discordClient.enableAutoReconnect()
discordClient.login(token)

local relayChannelID = "channelID"

discordClient.on("message","chatRelay",function(message)
    if message.author.id == discordClient.user.id or message.dm then return end
    if message.channel.id != relayChannelID then return end

    chatPrint("[DISCORD] " , message.member.color, message.member.nick, "\n", color_white, message.content, message.attachments[1] and "\n" .. message.attachments[1].proxy_url)
end)

hook.Add("PlayerSay", "chatRelay", function(ply,text)
    discordClient.sendMessage(relayChannelID, discord.escapeMarkdown(ply:GetName() .. ": " .. text))
end)

hook.Add("PlayerSay", "chatRelay", function(ply,text)
    discordClient.sendMessage(relayChannelID, discord.escapeMarkdown(ply:GetName() .. ": " .. text))
end)

gameevent.Listen("player_disconnect")
hook.Add("player_disconnect", "chatRelay", function(data)
    discordClient.sendMessage(relayChannelID, discord.messageEmbed()
        .setTitle("Player " .. data.name .. " disconnected")
        .addField("Reason", data.reason)
        .setColor(Color(255,50,50))
    )
end)

gameevent.Listen("player_connect")
hook.Add("player_connect", "chatRelay", function(data)
    discordClient.sendMessage(relayChannelID, discord.messageEmbed()
        .setTitle("Player " .. data.name .. " is connecting to the server")
        .setColor(Color(50,255,50))
    )
end)


[CLIENT]
net.Receive("chatPrint", function()
    chat.AddText(unpack(net.ReadTable()))
end)
```
# command-creation-example
```lua
local token = ""
local guildID = ""

if discordClient
then
    discordClient.destroy()
end

discordClient = discord.client()
discordClient.enableAutoReconnect()
discordClient.login(token)

discordClient.on("ready","commandCreationExample",function()
    local exampleCommand = discord.command()

    exampleCommand.setName("example")
    exampleCommand.addSubGroup(
        discord.subgroup()
        .setName("subgroupExample")
        .addCommand(
            discord.command()
            .setName("cmdWithChoices")
            .addOption(
                discord.option()
                .setName("val")
                .setDescription("description")
                .setType(discord.enums.command_option_type.STRING)
                .setRequired(true)
                .addChoice("1", "1")
                .addChoice("2", "2")
                .addChoice("3", "3")
                .addChoice("4", "4")
            )
        )
    )
    exampleCommand.addSubCommand(
        discord.command()
        .setName("cmd")
        .addOption(
            discord.option()
            .setName("val")
            .setDescription("description")
            .setType(discord.enums.command_option_type.STRING)
            .setRequired(true)
        )
    )
    exampleCommand.addSubCommand(
        discord.command()
        .setName("response1")
    )
    exampleCommand.addSubCommand(
        discord.command()
        .setName("response2")
    )
    discordClient.createGuildCommand(exampleCommand, guildID)

    discordClient.on("interactionCreate", "responseExample", function(interaction)
        local data = interaction.data
        --PrintTable(data)
        if data.name == "example"
        then
            if data.options[1].name == "response1"
            then
                interaction.response(discord.enums.response_type.DeferredChannelMessageWithSource)
                timer.Simple(2,function()
                    interaction.editResponse("Response")
                end)
            elseif data.options[1].name == "response2"
            then
                interaction.response(discord.enums.response_type.ChannelMessageWithSource , "Response")
            end
        end
    end)
end)
```
