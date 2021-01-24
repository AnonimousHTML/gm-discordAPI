# client

# Properties
* **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** user  

---
# Methods
# `void` `login(token)`
# Arguments
* `string`  

---
# `void` `on(eventname, uid, callback)`
# Arguments
* `string`  
* `string`  
* `function`  

---
# `void` `enableAutoReconnect()`
---
# `void` `reconnect()`
---
# `void` `destroy()`
---
# `void` `sendMessage(channel, message, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
**[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)**  
**[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)**  
* `function`  

---
# `void` `sendMessageDM(message, message, callback)`
# Arguments
* `string`  
**[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**  
this argument is used as the user ID  
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
**[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)**  
**[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)**  
* `function`  

---
# `void` `getMessage(channel, message_id, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
* `string`  
* `function`  

---
# `void` `editMessage(channel, message, editedMessage, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
this argument is used as the channel ID  
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
this argument is used as the message ID  
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
**[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)**  
**[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)**  
* `function`  

---
# `void` `deleteMessage(channel, message, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
this argument is used as the channel ID  
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
this argument is used as the message ID  
* `function`  

---
# `void` `createReaction(channel, message, emoji, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
this argument is used as the channel ID  
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
this argument is used as the message ID  
* `string`  
`reaction `  
* `function`  

---
# `void` `deleteReaction(channel, message, message, emoji, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
this argument is used as the channel ID  
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
this argument is used as the message ID  
* `string`  
**[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**  
this argument is used as the user ID  
* `string`  
`reaction `  
* `function`  

---
# `void` `deleteAllReactions(channel, message, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
this argument is used as the channel ID  
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
this argument is used as the message ID  
* `function`  

---
# `void` `pinMessage(message, callback)`
# Arguments
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
this argument is used as the message ID  
* `function`  

---
# `void` `unpinMessage(message, callback)`
# Arguments
* `string`  
**[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**  
this argument is used as the message ID  
* `function`  

---
# `void` `createDM(message, callback)`
# Arguments
* `string`  
**[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**  
this argument is used as the user ID  
* `function`  

---
# `void` `kickMember(guild, member, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
**[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**  
**[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)**  
this argument is used as the member ID  
* `function`  

---
# `void` `banMember(guild, member, reason, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
**[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**  
**[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)**  
this argument is used as the member ID  
* `string`  
this argument is optional  
* `function`  

---
# `void` `unbanMember(guild, member, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
**[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**  
**[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)**  
this argument is used as the member ID  
* `function`  

---
# `void` `getBanList(guild, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `function`  

---
# `void` `createGuildRole(guild, name, permissions, color, hoist, mentionable, callback)`
Description
---
All arguments except guild are optional  

# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
* `permissions`  
* `color`  
* `boolean`  
* `boolean`  
* `function`  

---
# `void` `editGuildRole(guild, role, name, permissions, color, hoist, mentionable, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
`role`  
this argument is used as the role ID  
* `string`  
* `permissions`  
* `color`  
* `boolean`  
* `boolean`  
* `function`  

---
# `void` `deleteGuildRole(guild, role, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
`role`  
this argument is used as the role ID  
* `function`  

---
# `void` `addMemberRole(guild, message, role, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
**[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**  
this argument is used as the user ID  
* `string`  
`role`  
this argument is used as the role ID  
* `function`  

---
# `void` `removeMemberRole(guild, message, role, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
**[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**  
this argument is used as the user ID  
* `string`  
`role`  
this argument is used as the role ID  
* `function`  

---
# `void` `setMemberNick(guild, message, nick, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
**[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**  
this argument is used as the user ID  
* `string`  
* `function`  

---
# `void` `setNick(guild, nick, callback)`
Description
---
Changes the bot's nickname for this guild  

# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
* `function`  

---
# `void` `setChannelName(channel, name, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
this argument is used as the channel ID  
* `string`  
* `function`  

---
# `void` `getInvites(guild, nick, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
* `function`  

---
# `void` `deleteInvite(invite_code, callback)`
# Arguments
* `string`  
* `function`  

---
# `void` `createWebhook(channel, name, avatarURL, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
this argument is used as the channel ID  
* `string`  
this argument is optional  
* `string`  
this argument is optional  
* `function`  

---
# `void` `getChannelWebhooks(channel, callback)`
# Arguments
* `string`  
**[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**  
this argument is used as the channel ID  
* `function`  

---
# `void` `deleteWebhook(webhook_id, callback)`
# Arguments
* `string`  
* `function`  

---
# `void` `executeWebhook(webhook_id, webhook_token, message, callback)`
# Arguments
* `string`  
* `string`  
* `whmessage`  
* `function`  

---
# `void` `getGlobalCommands(callback)`
# Arguments
* `function`  

---
# `void` `createGlobalCommand(command, callback)`
# Arguments
* **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)**  
* `function`  

---
# `void` `editGlobalCommand(command, command_id, callback)`
# Arguments
* **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)**  
* `string`  
* `function`  

---
# `void` `deleteGlobalCommand(command_id, callback)`
# Arguments
* `string`  
* `function`  

---
# `void` `deleteGlobalCommand(command, guild, callback)`
# Arguments
* **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)**  
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `function`  

---
# `void` `getGuildCommands(guild, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `function`  

---
# `void` `editGuildCommand(guild, command_id, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
* `function`  

---
# `void` `deleteGuildCommand(guild, command_id, callback)`
# Arguments
* `string`  
**[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**  
this argument is used as the guild ID  
* `string`  
* `function`  

---
