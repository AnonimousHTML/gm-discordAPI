function discord.structures.role(client, role)
    role.color = discord.resolver.intToColor(role.color)
    role._type = "role"

    return role
end