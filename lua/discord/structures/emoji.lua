function discord.structures.emoji(emoji, allowURLencode)
    if istable(emoji)
    then
        -- it should work now
        local str = (emoji.animated and "a" or "") .. ":" .. emoji.name .. ":" .. emoji.id
        debug.setmetatable(emoji, {__tostring = function() return str end, __concat = function(self,val) return str .. val end})
    else
        local str = string.match(emoji, "<?(a?:.*:[0-9]*)>?")
        if str == nil and allowURLencode
        then
            local str = ""
            for i = 1, #emoji
            do
                str = str .. string.format("%%%x", emoji:byte(i, i))
            end
            emoji = str
        else
            emoji = str or emoji
        end
    end

    return emoji
end