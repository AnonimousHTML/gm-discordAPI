if CLIENT then return end
require("gwsockets")
require("chttp")

discord = {}
discord.structures = {}

for k, v in ipairs(file.Find("discord/structures/*", "LUA")) do
    include("discord/structures/" .. v)
end

for k, v in ipairs(file.Find("discord/constructors/*", "LUA")) do
    include("discord/constructors/" .. v)
end

include("discord/enums.lua")
include("discord/utils.lua")
include("discord/resolver.lua")


include("discord/client.lua")