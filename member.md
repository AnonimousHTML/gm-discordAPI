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
# `void` `send`

# Arguments
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** `embed` message  
* `function` callback  

---
# `void` `setNick`

# Arguments
* `string` nick  
* `function` callback  

---
# `roles` `fetchRoles`


Description
---
Returns all roles of the participant  

---
# `boolean` `hasPermission`

# Arguments
* `integer` permission  

---
# `void` `kick`

# Arguments
* `function` callback  

---
# `void` `ban`

# Arguments
* `string` reason  
optional argument 
* `function` callback  

---
