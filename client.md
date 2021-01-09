# client

# Properties
* `user` user  
the user's id  

---
# Methods
# `login`

# Arguments
* `string` token  

---
# `on`

# Arguments
* `string` eventname  
* `string` uid  
* `function` callback  

---
# `enableAutoReconnect`


---
# `reconnect`


---
# `destroy`


---
# `destroy`


---
# `sendMessage`

# Arguments
* `string` `channel` channel  
* `string` `message` `embed` message  
* `function` callback  

---
# `getMessage`

# Arguments
* `string` `channel` channel  
* `string` message_id  
* `function` callback  

---
# `editMessage`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` `message` message  
this argument is used as the message ID 
* `string` `message` `embed` editedMessage  
* `function` callback  

---
# `deleteMessage`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` `message` message  
this argument is used as the message ID 
* `function` callback  

---
# `createReaction`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` `message` message  
this argument is used as the message ID 
* `string` `reaction` emoji  
* `function` callback  

---
# `deleteReaction`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` `message` message  
this argument is used as the message ID 
* `string` `user` message  
this argument is used as the user ID 
* `string` `reaction` emoji  
* `function` callback  

---
# `deleteAllReactions`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` `message` message  
this argument is used as the message ID 
* `function` callback  

---
# `pinMessage`

# Arguments
* `string` `message` message  
this argument is used as the message ID 
* `function` callback  

---
# `unpinMessage`

# Arguments
* `string` `message` message  
this argument is used as the message ID 
* `function` callback  

---
# `createDM`

# Arguments
* `string` `user` message  
this argument is used as the user ID 
* `function` callback  

---
# `sendMessageDM`

# Arguments
* `string` `user` message  
this argument is used as the user ID 
* `string` `message` `embed` message  
* `function` callback  

---
# `kickMember`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` user  
this argument is used as the member ID 
* `function` callback  

---
# `banMember`

# Arguments
* `string` `useguildr` guild  
this argument is used as the guild ID 
* `string` `user` user  
this argument is used as the member ID 
* `string` reason  
this argument is optional 
* `function` callback  

---
# `unbanMember`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` user  
this argument is used as the member ID 
* `function` callback  

---
# `getBanList`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `function` callback  

---
# `createGuildRole`

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
# `editGuildRole`

Description
---
All arguments except guild are optional

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
# `deleteGuildRole`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `role` role  
this argument is used as the role ID 
* `function` callback  

---
# `addMemberRole`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` user  
this argument is used as the member ID 
* `string` `role` role  
this argument is used as the role ID 
* `function` callback  

---
# `removeMemberRole`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` user  
this argument is used as the member ID 
* `string` `role` role  
this argument is used as the role ID 
* `function` callback  

---
# `setMemberNick`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` `user` user  
this argument is used as the member ID 
* `string` nick  
* `function` callback  

---
# `setNick`


Description
---
Changes the bot's nickname for this guild  
# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` nick  
* `function` callback  

---
# `setChannelName`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` name  
* `function` callback  

---
# `getInvites`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `function` callback  

---
# `deleteInvite`

# Arguments
* `string` invite_code  
* `function` callback  

---
# `createWebhook`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `string` name  
* `string` avatar  
this argument is optional 
* `function` callback  

---
# `getChannelWebhooks`

# Arguments
* `string` `channel` channel  
this argument is used as the channel ID 
* `function` callback  

---
# `deleteWebhook`

# Arguments
* `string` webhook_id  
* `function` callback  

---
# `executeWebhook`

# Arguments
* `string` webhook_id  
* `string` webhook_token  
* `whmessage` message  
* `function` callback  

---
# `getGlobalCommands`

# Arguments
* `function` callback  

---
# `createGlobalCommand`

# Arguments
* `command` command  
* `function` callback  

---
# `editGlobalCommand`

# Arguments
* `command` command  
* `string` command_id  
* `function` callback  
---
# `deleteGlobalCommand`

# Arguments
* `string` command_id  
* `function` callback  
---
# `createGlobalCommand`

# Arguments
* `command` command  
* `function` callback  
---
# `getGuildCommands`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `function` callback  

---
# `editGuildCommand`

# Arguments
* `command` command  
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` command_id  
* `function` callback  
---
# `deleteGlobalCommand`

# Arguments
* `string` `guild` guild  
this argument is used as the guild ID 
* `string` command_id 
* `function` callback  
---
