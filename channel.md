# channel

# Properties
* `string` id  
the id of this channel  
* `integer` type  
the [type of channel](https://discord.com/developers/docs/resources/channel#channel-object-channel-types)  
* `string` guild_id  
the id of the guild  
* `integer` position  
sorting position of the channel  
* `string` name  
the name of the channel (2-100 characters)  
* `string` topic  
the channel topic (0-1024 characters)  
* `boolean` nsfw  
whether the channel is nsfw  
* `string` icon  
icon hash  
* `string` owner_id  
id of the DM creator  

---
# Methods
# `send`


Description
---
Send a message to the channel  
# Arguments
* `string` `message` `embed` message  
* `function` callback  

---
# `setName`


Description
---
Set the channel name  
# Arguments
* `string` name  
* `function` callback  

---
