local bor = bit.bor
local band = bit.band

function discord.permissions()
    local permissions = {}
    permissions.bitfield = 0

    function permissions.add(permission)
        permissions.bitfield = bor(permissions.bitfield, permission)
        return permissions
    end

    function permissions.remove(permission)
        permissions.bitfield = band(permissions.bitfield, permission)
        return permissions
    end

    function permissions.has(permission)
        return (band(permissions.bitfield, discord.enums.permissions.ADMINISTRATOR) == discord.enums.permissions.ADMINISTRATOR) or (band(permissions.bitfield, permission) == permission)
    end

    return permissions
end