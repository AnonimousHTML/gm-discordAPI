# member

# Properties
* `string` nick  
this users guild nickname  
* `user` user  
the user this guild member represents  
* `string` joined_at  
ISO8601 timestamp when the user joined the guild  

---
# Methods
# `send`


Description
---
Send a message to the user's dm channel  
# Arguments
* `string` `message` `embed` message  
* `function` callback  

---
# `setNick`

# Arguments
* `string` nick  
* `function` callback  

---
# `table fetchRoles`


Description
---
Returns all roles of the participant  

---
# `boolean hasPermission`

# Arguments
* `integer` permission  

---
# `kick`

# Arguments
* `function` callback  

---
# `ban`

# Arguments
* `string` reason  
optional argument 
* `function` callback  

---
# `presence getPresence`


---
