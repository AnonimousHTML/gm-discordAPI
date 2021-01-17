# client

# Properties
* `user` user  

---
# Methods
# `void` `login`

# Arguments
* `string` token  

---
# `void` `on`

# Arguments
* `string` eventname  
* `string` uid  
* `function` callback  

---
# `void` `enableAutoReconnect`


---
# `void` `reconnect`


---
# `void` `destroy`


---
# `void` `sendMessage`

# Arguments
* `string` `channel` channel  
* `string` (message-reference-url) `embed` message  
* `function` callback  

---
# `void` `sendMessageDM`

# Arguments
* `string` `user` message  
this argument is used as the user ID 
* `string` (message-reference-url) `embed` message  
* `function` callback  

---
# `void` `getMessage`

# Arguments
* `string` `channel` channel  
* `string` message_id  
* `function` callback  

---
# `void` `editMessage`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` (message-reference-url) message  
this argument is used as the message ID 
* `string` (message-reference-url) `embed` editedMessage  
* `function` callback  

---
# `void` `deleteMessage`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` (message-reference-url) message  
this argument is used as the message ID 
* `function` callback  

---
# `void` `createReaction`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` (message-reference-url) message  
this argument is used as the message ID 
* `string` `reaction ` emoji  
* `function` callback  

---
# `void` `deleteReaction`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` (message-reference-url) message  
this argument is used as the message ID 
* `string` `user` message  
this argument is used as the user ID 
* `string` `reaction ` emoji  
* `function` callback  

---
# `void` `deleteAllReactions`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` (message-reference-url) message  
this argument is used as the message ID 
* `function` callback  

---
# `void` `pinMessage`

# Arguments
* `string` (message-reference-url) message  
this argument is used as the message ID 
* `function` callback  

---
# `void` `unpinMessage`

# Arguments
* `string` (message-reference-url) message  
this argument is used as the message ID 
* `function` callback  

---
# `void` `createDM`

# Arguments
* `string` `user` message  
this argument is used as the user ID 
* `function` callback  

---
# `void` `kickMember`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` `member` member  
this argument is used as the member ID 
* `function` callback  

---
# `void` `banMember`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` `member` member  
this argument is used as the member ID 
* `string` reason  
this argument is optional 
* `function` callback  

---
# `void` `unbanMember`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` `member` member  
this argument is used as the member ID 
* `function` callback  

---
# `void` `getBanList`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `function` callback  

---
# `void` `createGuildRole`


Description
---
All arguments except guild are optional  
# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` name  
* `permissions` permissions  
* `color` color  
* `boolean` hoist  
* `boolean` mentionable  
* `function` callback  

---
# `void` `editGuildRole`

# Arguments
* `string` `guild` guild  
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
# `void` `deleteGuildRole`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `role` role  
this argument is used as the role ID 
* `function` callback  

---
# `void` `addMemberRole`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` message  
this argument is used as the user ID 
* `string` `role` role  
this argument is used as the role ID 
* `function` callback  

---
# `void` `removeMemberRole`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` message  
this argument is used as the user ID 
* `string` `role` role  
this argument is used as the role ID 
* `function` callback  

---
# `void` `setMemberNick`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` message  
this argument is used as the user ID 
* `string` nick  
* `function` callback  

---
# `void` `setNick`


Description
---
Changes the bot's nickname for this guild  
# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` nick  
* `function` callback  

---
# `void` `setChannelName`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` name  
* `function` callback  

---
# `void` `getInvites`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` nick  
* `function` callback  

---
# `void` `deleteInvite`

# Arguments
* `string` invite_code  
* `function` callback  

---
# `void` `createWebhook`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` name  
this argument is optional 
* `string` avatarURL  
this argument is optional 
* `function` callback  

---
# `void` `getChannelWebhooks`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `function` callback  

---
# `void` `deleteWebhook`

# Arguments
* `string` webhook_id  
* `function` callback  

---
# `void` `executeWebhook`

# Arguments
* `string` webhook_id  
* `string` webhook_token  
* `whmessage` message  
* `function` callback  

---
# `void` `getGlobalCommands`

# Arguments
* `function` callback  

---
# `void` `createGlobalCommand`

# Arguments
* `command` command  
* `function` callback  

---
# `void` `editGlobalCommand`

# Arguments
* `command` command  
* `string` command_id  
* `function` callback  

---
# `void` `deleteGlobalCommand`

# Arguments
* `string` command_id  
* `function` callback  

---
# `void` `deleteGlobalCommand`

# Arguments
* `command` command  
* `string` `guild` guild  
this argument is used as the guild ID 
* `function` callback  

---
# `void` `getGuildCommands`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `function` callback  

---
# `void` `editGuildCommand`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` command_id  
* `function` callback  

---
# `void` `deleteGuildCommand`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` command_id  
* `function` callback  

---
