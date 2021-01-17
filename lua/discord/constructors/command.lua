function discord.command()
    local command = {
        description = "​"
    }

    function command.setName(name)
        command.name = name

        return command
    end

    function command.setType(type)
        command.type = type
    end

    function command.setDescription(description)
        command.description = description

        return command
    end

    function command.addOption(option)
        command.options = command.options or {}
        command.options[#command.options + 1] = option

        return command
    end

    function command.addSubCommand(_command)
        command.options = command.options or {}
        _command.type = discord.enums.command_option_type.SUB_COMMAND
        command.options[#command.options + 1] = _command

        return command
    end

    function command.addSubGroup(subgroup)
        command.options = command.options or {}
        subgroup.type = discord.enums.command_option_type.SUB_COMMAND_GROUP
        command.options[#command.options + 1] = subgroup

        return command
    end

    command._type = "command"
    return command
end

function discord.subgroup()
    local subgroup = discord.command()
    subgroup.setType = nil
    subgroup.addSubGroup = nil
    subgroup.addOption = nil
    subgroup.addCommand = subgroup.addSubCommand
    subgroup.addSubCommand = nil

    subgroup._type = "subgroup"
    return subgroup
end

function discord.option()
    local option = {
        description = "​",
    }

    function option.setType(type)
        option.type = type

        return option
    end

    function option.setName(name)
        option.name = name

        return option
    end

    function option.setDescription(description)
        option.description = description

        return option
    end

    function option.setDefault(bool)
        option.default = bool

        return option
    end

    function option.setRequired(required)
        option.required = required

        return option
    end

    function option.addChoice(name, value)
        option.choices = option.choices or {}

        option.choices[#option.choices + 1] = {
            name = name,
            value = value
        }

        return option
    end

    option._type = "option"
    return option
end