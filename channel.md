# channel

# Properties
* `string` id  
the id of this channel  
* `integer` type  
the id of this channel  
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
# `void` `send`


Description
---
Send a message to the channel  
# Arguments
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[member](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** message  
* `function` callback  

---
# `void` `setName`


Description
---
Set the channel name  
# Arguments
* `string` name  
* `function` callback  

---
