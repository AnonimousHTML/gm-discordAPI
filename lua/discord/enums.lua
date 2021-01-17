discord.enums = {
    permissions =
    {
        CREATE_INSTANT_INVITE = 0x00000001,
        KICK_MEMBERS = 0x00000002,
        BAN_MEMBERS = 0x00000004,
        ADMINISTRATOR = 0x00000008,
        MANAGE_CHANNELS = 0x00000010,
        MANAGE_GUILD = 0x00000020,
        ADD_REACTIONS = 0x00000040,
        VIEW_AUDIT_LOG = 0x00000080,
        PRIORITY_SPEAKER = 0x00000100,
        STREAM = 0x00000200,
        VIEW_CHANNEL = 0x00000400,
        SEND_MESSAGES = 0x00000800,
        SEND_TTS_MESSAGES = 0x00001000,
        MANAGE_MESSAGES = 0x00002000,
        EMBED_LINKS = 0x00004000,
        ATTACH_FILES = 0x00008000,
        READ_MESSAGE_HISTORY = 0x00010000,
        MENTION_EVERYONE = 0x00020000,
        USE_EXTERNAL_EMOJIS = 0x00040000,
        VIEW_GUILD_INSIGHTS = 0x00080000,
        CONNECT = 0x00100000,
        SPEAK = 0x00200000,
        MUTE_MEMBERS = 0x00400000,
        DEAFEN_MEMBERS = 0x00800000,
        MOVE_MEMBERS = 0x01000000,
        USE_VAD = 0x02000000,
        CHANGE_NICKNAME = 0x04000000,
        MANAGE_NICKNAMES = 0x08000000,
        MANAGE_ROLES = 0x10000000,
        MANAGE_WEBHOOKS = 0x20000000,
        MANAGE_EMOJIS = 0x40000000
    },

    message_type =
    {
        DEFAULT = 0,
        RECIPIENT_ADD = 1,
        RECIPIENT_REMOVE = 2,
        CALL = 3,
        CHANNEL_NAME_CHANGE = 4,
        CHANNEL_ICON_CHANGE = 5,
        CHANNEL_PINNED_MESSAGE = 6,
        GUILD_MEMBER_JOIN = 7,
        USER_PREMIUM_GUILD_SUBSCRIPTION = 8,
        USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_1 = 9,
        USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_2 = 10,
        USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_3 = 11,
        CHANNEL_FOLLOW_ADD = 12,
        GUILD_DISCOVERY_DISQUALIFIED = 14,
        GUILD_DISCOVERY_REQUALIFIED = 15
    },

    command_option_type =
    {
        SUB_COMMAND	= 1,
        SUB_COMMAND_GROUP = 2,
        STRING	= 3,
        INTEGER	= 4,
        BOOLEAN	= 5,
        USER	= 6,
        CHANNEL	= 7,
        ROLE	= 8
    },

    response_type =
    {
        Pong = 1,                        -- ACK a Ping
        Acknowledge = 2,                 -- ACK a command without sending a message, eating the user's input
        ChannelMessage = 3,              -- respond with a message, eating the user's input
        ChannelMessageWithSource = 4,    -- respond with a message, showing the user's input
        AcknowledgeWithSource = 5,	    -- ACK a command without sending a message, showing the user's input
    },
}