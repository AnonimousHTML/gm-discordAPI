# member

# Properties
* `string` nick  
this users guild nickname  
* **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** user  
the user this guild member represents  
* `string` joined_at  
ISO8601 timestamp when the user joined the guild  

---
# Methods
# `void` `send(message, callback)`
# Arguments
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** * `function` 
---
# `void` `setNick(nick, callback)`
# Arguments
* `string` * `function` 
---
# `roles` `fetchRoles()`
Description
---
Returns all roles of the participant  

---
# `boolean` `hasPermission(permission)`
# Arguments
* `integer` 
---
# `void` `kick(callback)`
# Arguments
* `function` 
---
# `void` `ban(reason, callback)`
# Arguments
* `string` optional argument 
* `function` 
---
