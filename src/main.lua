local Element = require("src.element")
local SubshellOccupancy = require("src.subshell_occupancy")
local ElectronConfiguration = require("src.electron_configuration")
local inspect = require("inspect")

local lithium_subshell_occupancy = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 1
}

-- print(lithium_subshell_occupancy:formatted_string())

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

print(inspect(lithium))
