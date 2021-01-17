# user

# Properties
* `string` id  
the user's id  
* `string` username  
the user's username  
* `string` discriminator  
the user's discord-tag(#0000)  
* `string` avatar  
the user's avatar hash  
* `boolean` bot  
whether the user belongs to an OAuth2 application  
* `boolean` system  
whether the user is an Official Discord System user (part of the urgent message system)  
* `boolean` mfa_enabled  
whether the user has two factor enabled on their account  
* `string` locale  
the user's chosen language option  
* `boolean` verified  
whether the email on this account has been verified  
* `string` email  
the user's email  
* `integer` flags  
the [flags](https://discord.com/developers/docs/resources/user#user-object-user-flags) on a user's account    
* `integer` premium_type  
the type of [Nitro subscription](https://discord.com/developers/docs/resources/user#user-object-premium-types) on a user's account    
* `integer` public_flags  
the public [flags](https://discord.com/developers/docs/resources/user#user-object-user-flags) on a user's account    

---
# Methods
# `string` `avatarUrl`

# Arguments
* `integer` size  
* `string` extentsion  
one of jpg,jpeg,png,webp,gif 

---
# `void` `send`

# Arguments
* `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[member](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** message  
* `function` callback  

---
