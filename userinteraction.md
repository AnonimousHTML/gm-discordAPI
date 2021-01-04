# user-interaction

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
* `integer` type  
* `string` `message` `embed` message  
* `function` callback  

---
# `editResponce`

# Arguments
* `string` `message` `embed` message  
* `function` callback  

---
# `deleteResponce`

# Arguments
* `function` callback  

---
# interaction


---
# Methods
# `delete`

# Arguments
* `function` callback  

---
