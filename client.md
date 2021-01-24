# client

# Properties
| type  | parameter | description |
| ----  | --------- | ----------- |
| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** | user | |

---
# Methods
# `void` `user.setPresence(presence)`
# Arguments
* `presence` presence  

---
# `void` `user.setStatus(status)`
# Arguments
* `integer` status  
Online, Idle, DND, Invisible  

---
# `void` `login(token)`
# Arguments
* `string` token  

---
# `void` `on(eventname, uid, callback)`
# Arguments
* `string` eventname  
* `string` uid  
* `function` callback  

---
# `void` `enableAutoReconnect()`
---
# `void` `reconnect()`
---
# `void` `destroy()`
---
# `void` `sendMessage(channel, message, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** message  
* `function` callback  

---
# `void` `sendMessageDM(message, message, callback)`
# Arguments
* `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** message  
this argument is used as the user ID  
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** message  
* `function` callback  

---
# `void` `getMessage(channel, message_id, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
* `string` message_id  
* `function` callback  

---
# `void` `editMessage(channel, message, editedMessage, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
this argument is used as the channel ID  
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** message  
this argument is used as the message ID  
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** editedMessage  
* `function` callback  

---
# `void` `deleteMessage(channel, message, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
this argument is used as the channel ID  
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** message  
this argument is used as the message ID  
* `function` callback  

---
# `void` `createReaction(channel, message, emoji, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
this argument is used as the channel ID  
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** message  
this argument is used as the message ID  
* `string` `reaction ` emoji  
* `function` callback  

---
# `void` `deleteReaction(channel, message, message, emoji, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
this argument is used as the channel ID  
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** message  
this argument is used as the message ID  
* `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** message  
this argument is used as the user ID  
* `string` `reaction ` emoji  
* `function` callback  

---
# `void` `deleteAllReactions(channel, message, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
this argument is used as the channel ID  
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** message  
this argument is used as the message ID  
* `function` callback  

---
# `void` `pinMessage(message, callback)`
# Arguments
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** message  
this argument is used as the message ID  
* `function` callback  

---
# `void` `unpinMessage(message, callback)`
# Arguments
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** message  
this argument is used as the message ID  
* `function` callback  

---
# `void` `createDM(message, callback)`
# Arguments
* `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** message  
this argument is used as the user ID  
* `function` callback  

---
# `void` `kickMember(guild, member, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** **[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)** member  
this argument is used as the member ID  
* `function` callback  

---
# `void` `banMember(guild, member, reason, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** **[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)** member  
this argument is used as the member ID  
* `string` reason  
this argument is optional  
* `function` callback  

---
# `void` `unbanMember(guild, member, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** **[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)** member  
this argument is used as the member ID  
* `function` callback  

---
# `void` `getBanList(guild, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `function` callback  

---
# `void` `createGuildRole(guild, name, permissions, color, hoist, mentionable, callback)`
Description
---
All arguments except guild are optional  

# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` name  
* `permissions` permissions  
* `color` color  
* `boolean` hoist  
* `boolean` mentionable  
* `function` callback  

---
# `void` `editGuildRole(guild, role, name, permissions, color, hoist, mentionable, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` `role` role  
this argument is used as the role ID  
* `string` name  
* `permissions` permissions  
* `color` color  
* `boolean` hoist  
* `boolean` mentionable  
* `function` callback  

---
# `void` `deleteGuildRole(guild, role, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` `role` role  
this argument is used as the role ID  
* `function` callback  

---
# `void` `addMemberRole(guild, message, role, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** message  
this argument is used as the user ID  
* `string` `role` role  
this argument is used as the role ID  
* `function` callback  

---
# `void` `removeMemberRole(guild, message, role, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** message  
this argument is used as the user ID  
* `string` `role` role  
this argument is used as the role ID  
* `function` callback  

---
# `void` `setMemberNick(guild, message, nick, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** message  
this argument is used as the user ID  
* `string` nick  
* `function` callback  

---
# `void` `setNick(guild, nick, callback)`
Description
---
Changes the bot's nickname for this guild  

# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` nick  
* `function` callback  

---
# `void` `setChannelName(channel, name, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
this argument is used as the channel ID  
* `string` name  
* `function` callback  

---
# `void` `getInvites(guild, nick, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` nick  
* `function` callback  

---
# `void` `deleteInvite(invite_code, callback)`
# Arguments
* `string` invite_code  
* `function` callback  

---
# `void` `createWebhook(channel, name, avatarURL, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
this argument is used as the channel ID  
* `string` name  
this argument is optional  
* `string` avatarURL  
this argument is optional  
* `function` callback  

---
# `void` `getChannelWebhooks(channel, callback)`
# Arguments
* `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** channel  
this argument is used as the channel ID  
* `function` callback  

---
# `void` `deleteWebhook(webhook_id, callback)`
# Arguments
* `string` webhook_id  
* `function` callback  

---
# `void` `executeWebhook(webhook_id, webhook_token, message, callback)`
# Arguments
* `string` webhook_id  
* `string` webhook_token  
* `whmessage` message  
* `function` callback  

---
# `void` `getGlobalCommands(callback)`
# Arguments
* `function` callback  

---
# `void` `createGlobalCommand(command, callback)`
# Arguments
* **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)** command  
* `function` callback  

---
# `void` `editGlobalCommand(command, command_id, callback)`
# Arguments
* **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)** command  
* `string` command_id  
* `function` callback  

---
# `void` `deleteGlobalCommand(command_id, callback)`
# Arguments
* `string` command_id  
* `function` callback  

---
# `void` `deleteGlobalCommand(command, guild, callback)`
# Arguments
* **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)** command  
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `function` callback  

---
# `void` `getGuildCommands(guild, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `function` callback  

---
# `void` `editGuildCommand(guild, command_id, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` command_id  
* `function` callback  

---
# `void` `deleteGuildCommand(guild, command_id, callback)`
# Arguments
* `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** guild  
this argument is used as the guild ID  
* `string` command_id  
* `function` callback  

---
