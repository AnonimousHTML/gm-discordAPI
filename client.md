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
| `presence` | presence  |  |

---
# `void` `user.setStatus(status)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `integer` | status  |Online, Idle, DND, Invisible   |

---
# `void` `login(token)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` | token  |  |

---
# `void` `on([eventname](https://github.com/devonium/gm-discordAPI/blob/doc/events.md), uid, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` | [eventname](https://github.com/devonium/gm-discordAPI/blob/doc/events.md)  |  |
| `string` | uid  |  |
| `function` | callback  |  |

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
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |  |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** | message  |  |
| `function` | callback  |  |

---
# `void` `sendMessageDM(message, message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** | message  |this argument is used as the user ID   |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** | message  |  |
| `function` | callback  |  |

---
# `void` `getMessage(channel, message_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |  |
| `string` | message_id  |  |
| `function` | callback  |  |

---
# `void` `editMessage(channel, message, editedMessage, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |this argument is used as the channel ID   |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** | message  |this argument is used as the message ID   |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[messagec](https://github.com/devonium/gm-discordAPI/blob/doc/messagec.md#messagec)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** | editedMessage  |  |
| `function` | callback  |  |

---
# `void` `deleteMessage(channel, message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |this argument is used as the channel ID   |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** | message  |this argument is used as the message ID   |
| `function` | callback  |  |

---
# `void` `createReaction(channel, message, emoji, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |this argument is used as the channel ID   |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** | message  |this argument is used as the message ID   |
| `string` `reaction ` | emoji  |  |
| `function` | callback  |  |

---
# `void` `deleteReaction(channel, message, message, emoji, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |this argument is used as the channel ID   |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** | message  |this argument is used as the message ID   |
| `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** | message  |this argument is used as the user ID   |
| `string` `reaction ` | emoji  |  |
| `function` | callback  |  |

---
# `void` `deleteAllReactions(channel, message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |this argument is used as the channel ID   |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** | message  |this argument is used as the message ID   |
| `function` | callback  |  |

---
# `void` `pinMessage(message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** | message  |this argument is used as the message ID   |
| `function` | callback  |  |

---
# `void` `unpinMessage(message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** | message  |this argument is used as the message ID   |
| `function` | callback  |  |

---
# `void` `createDM(message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** | message  |this argument is used as the user ID   |
| `function` | callback  |  |

---
# `void` `kickMember(guild, member, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** **[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)** | member  |this argument is used as the member ID   |
| `function` | callback  |  |

---
# `void` `banMember(guild, member, reason, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** **[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)** | member  |this argument is used as the member ID   |
| `string` | reason  |this argument is optional   |
| `function` | callback  |  |

---
# `void` `unbanMember(guild, member, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** **[member](https://github.com/devonium/gm-discordAPI/blob/doc/member.md#member)** | member  |this argument is used as the member ID   |
| `function` | callback  |  |

---
# `void` `getBanList(guild, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `function` | callback  |  |

---
# `void` `createGuildRole(guild, name, permissions, color, hoist, mentionable, callback)`
Description
---
All arguments except guild are optional  

# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` | name  |  |
| **[permissions](https://github.com/devonium/gm-discordAPI/blob/doc/permissions.md)** | permissions  |  |
| `color` | color  |  |
| `boolean` | hoist  |  |
| `boolean` | mentionable  |  |
| `function` | callback  |  |

---
# `void` `editGuildRole(guild, role, name, permissions, color, hoist, mentionable, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` `role` | role  |this argument is used as the role ID   |
| `string` | name  |  |
| **[permissions](https://github.com/devonium/gm-discordAPI/blob/doc/permissions.md)** | permissions  |  |
| `color` | color  |  |
| `boolean` | hoist  |  |
| `boolean` | mentionable  |  |
| `function` | callback  |  |

---
# `void` `deleteGuildRole(guild, role, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` `role` | role  |this argument is used as the role ID   |
| `function` | callback  |  |

---
# `void` `addMemberRole(guild, message, role, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** | message  |this argument is used as the user ID   |
| `string` `role` | role  |this argument is used as the role ID   |
| `function` | callback  |  |

---
# `void` `removeMemberRole(guild, message, role, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** | message  |this argument is used as the user ID   |
| `string` `role` | role  |this argument is used as the role ID   |
| `function` | callback  |  |

---
# `void` `setMemberNick(guild, message, nick, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** | message  |this argument is used as the user ID   |
| `string` | nick  |  |
| `function` | callback  |  |

---
# `void` `setNick(guild, nick, callback)`
Description
---
Changes the bot's nickname for this guild  

# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` | nick  |  |
| `function` | callback  |  |

---
# `void` `setChannelName(channel, name, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |this argument is used as the channel ID   |
| `string` | name  |  |
| `function` | callback  |  |

---
# `void` `getInvites(guild, nick, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` | nick  |  |
| `function` | callback  |  |

---
# `void` `deleteInvite(invite_code, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` | invite_code  |  |
| `function` | callback  |  |

---
# `void` `createWebhook(channel, name, avatarURL, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |this argument is used as the channel ID   |
| `string` | name  |this argument is optional   |
| `string` | avatarURL  |this argument is optional   |
| `function` | callback  |  |

---
# `void` `getChannelWebhooks(channel, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[channel](https://github.com/devonium/gm-discordAPI/blob/doc/channel.md#channel)** | channel  |this argument is used as the channel ID   |
| `function` | callback  |  |

---
# `void` `deleteWebhook(webhook_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` | webhook_id  |  |
| `function` | callback  |  |

---
# `void` `executeWebhook(webhook_id, webhook_token, message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` | webhook_id  |  |
| `string` | webhook_token  |  |
| `whmessage` | message  |  |
| `function` | callback  |  |

---
# `void` `getGlobalCommands(callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `function` | callback  |  |

---
# `void` `createGlobalCommand(command, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)** | command  |  |
| `function` | callback  |  |

---
# `void` `editGlobalCommand(command, command_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)** | command  |  |
| `string` | command_id  |  |
| `function` | callback  |  |

---
# `void` `deleteGlobalCommand(command_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` | command_id  |  |
| `function` | callback  |  |

---
# `void` `deleteGlobalCommand(command, guild, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| **[command](https://github.com/devonium/gm-discordAPI/blob/doc/command.md#command)** | command  |  |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `function` | callback  |  |

---
# `void` `getGuildCommands(guild, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `function` | callback  |  |

---
# `void` `editGuildCommand(guild, command_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` | command_id  |  |
| `function` | callback  |  |

---
# `void` `deleteGuildCommand(guild, command_id, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[guild](https://github.com/devonium/gm-discordAPI/blob/doc/guild.md#guild)** | guild  |this argument is used as the guild ID   |
| `string` | command_id  |  |
| `function` | callback  |  |

---
