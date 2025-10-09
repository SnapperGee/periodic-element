local Element = require("src.element")
local ElectronConfiguration = require("src.electron_configuration")
local SubshellOccupancy = require("src.subshell_occupancy")

local hydrogen_subshell_occupancy = SubshellOccupancy:new{
    n = 1,
    l = "s",
    electron_count = 1
}

local hydrogen_electron_configuration = ElectronConfiguration:new{
    subshell_occupancy = { hydrogen_subshell_occupancy }
}

local hydrogen = Element:new{
    name = "Hydrogen",
    symbol = "H",
    number = 1,
    mass = 1.008,
    group = 1,
    period = 1,
    block = "s",
    electron_configuration = hydrogen_electron_configuration
}

local lithium_subshell_occupancy = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 1
}

local lithium_electron_configuration = ElectronConfiguration:new{
    core = "he",
    subshell_occupancy = { lithium_subshell_occupancy }
}

local lithium = Element:new{
    name = "lithium",
    symbol = "li",
    number = 3,
    mass = 6.941,
    group = 1,
    period = 2,
    block = "s",
    electron_configuration = lithium_electron_configuration
}
