### user-interaction
---

# Properties
* `string` id  
id of the interaction  
* `integer` type  
the type of interaction  
* `table` data  
the command data payload  
* `string` guild_id  
the guild it was sent from  
* `string` channel_id  
the channel it was sent from  
* `member` member  
guild member data for the invoking user  
* `string` token  
a continuation token for responding to the interaction  

---
# Methods
# `responce`

# Arguments
* `integer` [type](https://github.com/devonium/gm-discordAPI/blob/de1a26c6f7c185053ece6dba9eeb4425a3c33ec4/lua/discord/enums.lua#L68)  
* `string` `message` `embed` message  
* `function` callback  

---
# `editResponse`

# Arguments
* `string` `message` `embed` message  
* `function` callback  

---
# `deleteResponse`

# Arguments
* `function` callback  

---
### interaction
---

Description
---
Interaction structure is used in [client.getClobalCommands](https://github.com/devonium/gm-discordAPI/blob/doc/client.md#getglobalcommands)-[client.deleteGuildCommand](https://github.com/devonium/gm-discordAPI/blob/doc/client.md#deleteguildcommand)

# Methods
# `delete`
# Arguments
* `function` callback  

# `edit`
# Arguments
* `command` command
* `function` callback  
* `function` callback  

---
