# member

# Properties
| type  | parameter | description |
| ----  | --------- | ----------- |
| `string` | nick | this users guild nickname|
| **[user](https://github.com/devonium/gm-discordAPI/blob/doc/user.md#user)** | user | the user this guild member represents|
| `string` | joined_at | ISO8601 timestamp when the user joined the guild|

---
# Methods
# `void` `send(message, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` **[message](https://github.com/devonium/gm-discordAPI/blob/doc/message.md#message)** **[embed](https://github.com/devonium/gm-discordAPI/blob/doc/embed.md#embed)** | message  |message  |
| `function` | callback  |callback  |

---
# `void` `setNick(nick, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` | nick  |nick  |
| `function` | callback  |callback  |

---
# `roles` `fetchRoles()`
Description
---
Returns all roles of the participant  

---
# `boolean` `hasPermission(permission)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `integer` | permission  |permission  |

---
# `void` `kick(callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `function` | callback  |callback  |

---
# `void` `ban(reason, callback)`
# Arguments
| type  | name | description |
| ----  | ---- | ----------- |
| `string` | reason  |optional argument reason  |
| `function` | callback  |callback  |

---
