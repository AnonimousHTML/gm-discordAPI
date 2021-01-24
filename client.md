# client

# Properties
| type  | parameter | description |
| ----  | --------- | ----------- |
| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** | user | |

---
# Methods
# `void` `user.setPresence(presence)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `presence`| presence  |presence  |

---
# `void` `user.setStatus(status)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `integer`| status  |Online, Idle, DND, Invisible status  |

---
# `void` `login(token)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| token  |token  |

---
# `void` `on(eventname, uid, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| eventname  |eventname  |
| `string`| uid  |uid  |
| `function`| callback  |callback  |

---
# `void` `enableAutoReconnect()`
---
# `void` `reconnect()`
---
# `void` `destroy()`
---
# `void` `sendMessage(channel, message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |channel  |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| **[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)**| **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)**| message  |message  |
| `function`| callback  |callback  |

---
# `void` `sendMessageDM(message, message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**| message  |this argument is used as the user ID message  |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| **[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)**| **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)**| message  |message  |
| `function`| callback  |callback  |

---
# `void` `getMessage(channel, message_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |channel  |
| `string`| message_id  |message_id  |
| `function`| callback  |callback  |

---
# `void` `editMessage(channel, message, editedMessage, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |this argument is used as the channel ID channel  |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| message  |this argument is used as the message ID message  |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| **[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)**| **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)**| editedMessage  |editedMessage  |
| `function`| callback  |callback  |

---
# `void` `deleteMessage(channel, message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |this argument is used as the channel ID channel  |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| message  |this argument is used as the message ID message  |
| `function`| callback  |callback  |

---
# `void` `createReaction(channel, message, emoji, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |this argument is used as the channel ID channel  |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| message  |this argument is used as the message ID message  |
| `string`| `reaction `| emoji  |emoji  |
| `function`| callback  |callback  |

---
# `void` `deleteReaction(channel, message, message, emoji, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |this argument is used as the channel ID channel  |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| message  |this argument is used as the message ID message  |
| `string`| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**| message  |this argument is used as the user ID message  |
| `string`| `reaction `| emoji  |emoji  |
| `function`| callback  |callback  |

---
# `void` `deleteAllReactions(channel, message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |this argument is used as the channel ID channel  |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| message  |this argument is used as the message ID message  |
| `function`| callback  |callback  |

---
# `void` `pinMessage(message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| message  |this argument is used as the message ID message  |
| `function`| callback  |callback  |

---
# `void` `unpinMessage(message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)**| message  |this argument is used as the message ID message  |
| `function`| callback  |callback  |

---
# `void` `createDM(message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**| message  |this argument is used as the user ID message  |
| `function`| callback  |callback  |

---
# `void` `kickMember(guild, member, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**| **[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)**| member  |this argument is used as the member ID member  |
| `function`| callback  |callback  |

---
# `void` `banMember(guild, member, reason, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**| **[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)**| member  |this argument is used as the member ID member  |
| `string`| reason  |this argument is optional reason  |
| `function`| callback  |callback  |

---
# `void` `unbanMember(guild, member, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**| **[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)**| member  |this argument is used as the member ID member  |
| `function`| callback  |callback  |

---
# `void` `getBanList(guild, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `function`| callback  |callback  |

---
# `void` `createGuildRole(guild, name, permissions, color, hoist, mentionable, callback)`
Description
---
All arguments except guild are optional  

# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| name  |name  |
| **[permissions](https://github.com/devonium/gm-discordAPI/blob/doc/permissions.md)**| permissions  |permissions  |
| `color`| color  |color  |
| `boolean`| hoist  |hoist  |
| `boolean`| mentionable  |mentionable  |
| `function`| callback  |callback  |

---
# `void` `editGuildRole(guild, role, name, permissions, color, hoist, mentionable, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| `role`| role  |this argument is used as the role ID role  |
| `string`| name  |name  |
| **[permissions](https://github.com/devonium/gm-discordAPI/blob/doc/permissions.md)**| permissions  |permissions  |
| `color`| color  |color  |
| `boolean`| hoist  |hoist  |
| `boolean`| mentionable  |mentionable  |
| `function`| callback  |callback  |

---
# `void` `deleteGuildRole(guild, role, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| `role`| role  |this argument is used as the role ID role  |
| `function`| callback  |callback  |

---
# `void` `addMemberRole(guild, message, role, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**| message  |this argument is used as the user ID message  |
| `string`| `role`| role  |this argument is used as the role ID role  |
| `function`| callback  |callback  |

---
# `void` `removeMemberRole(guild, message, role, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**| message  |this argument is used as the user ID message  |
| `string`| `role`| role  |this argument is used as the role ID role  |
| `function`| callback  |callback  |

---
# `void` `setMemberNick(guild, message, nick, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)**| message  |this argument is used as the user ID message  |
| `string`| nick  |nick  |
| `function`| callback  |callback  |

---
# `void` `setNick(guild, nick, callback)`
Description
---
Changes the bot's nickname for this guild  

# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| nick  |nick  |
| `function`| callback  |callback  |

---
# `void` `setChannelName(channel, name, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |this argument is used as the channel ID channel  |
| `string`| name  |name  |
| `function`| callback  |callback  |

---
# `void` `getInvites(guild, nick, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| nick  |nick  |
| `function`| callback  |callback  |

---
# `void` `deleteInvite(invite_code, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| invite_code  |invite_code  |
| `function`| callback  |callback  |

---
# `void` `createWebhook(channel, name, avatarURL, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |this argument is used as the channel ID channel  |
| `string`| name  |this argument is optional name  |
| `string`| avatarURL  |this argument is optional avatarURL  |
| `function`| callback  |callback  |

---
# `void` `getChannelWebhooks(channel, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)**| channel  |this argument is used as the channel ID channel  |
| `function`| callback  |callback  |

---
# `void` `deleteWebhook(webhook_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| webhook_id  |webhook_id  |
| `function`| callback  |callback  |

---
# `void` `executeWebhook(webhook_id, webhook_token, message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| webhook_id  |webhook_id  |
| `string`| webhook_token  |webhook_token  |
| `whmessage`| message  |message  |
| `function`| callback  |callback  |

---
# `void` `getGlobalCommands(callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `function`| callback  |callback  |

---
# `void` `createGlobalCommand(command, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)**| command  |command  |
| `function`| callback  |callback  |

---
# `void` `editGlobalCommand(command, command_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)**| command  |command  |
| `string`| command_id  |command_id  |
| `function`| callback  |callback  |

---
# `void` `deleteGlobalCommand(command_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| command_id  |command_id  |
| `function`| callback  |callback  |

---
# `void` `deleteGlobalCommand(command, guild, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)**| command  |command  |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `function`| callback  |callback  |

---
# `void` `getGuildCommands(guild, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `function`| callback  |callback  |

---
# `void` `editGuildCommand(guild, command_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| command_id  |command_id  |
| `function`| callback  |callback  |

---
# `void` `deleteGuildCommand(guild, command_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string`| **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)**| guild  |this argument is used as the guild ID guild  |
| `string`| command_id  |command_id  |
| `function`| callback  |callback  |

---
