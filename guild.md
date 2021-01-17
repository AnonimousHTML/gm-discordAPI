# guild

# Properties
* `string` id  
guild id  
* `string` name  
guild name (2-100 characters, excluding trailing and leading whitespace)  
* `string` icon  
icon hash  
* `string` icon_hash  
icon hash, returned when in the template object  
* `string` splash  
splash hash  
* `string` discovery_splash  
discovery splash hash; only present for guilds with the "DISCOVERABLE" feature  
* `boolean` owner  
true if the user is the owner of the guild  
* `string` owner_id  
id of owner  
* `string` permissions  
total permissions for the user in the guild (excludes overrides)  
* `integer` verification_level  
verification level required for the guild  
* `roles` roles  
roles in the guild  
* `emojis` emojis  
custom guild emojis  
* [member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member) members  
users in the guild  
* [channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel) channels  
channels in the guild  
* `features` features  
strings enabled guild features  
* `integer` mfa_level  
required MFA level for the guild  
* `string` description  
the description for the guild, if the guild is discoverable  
* `string` banner  
banner hash  

---
