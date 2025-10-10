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

local helium_subshell_occupancy = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local helium_electron_configuration = ElectronConfiguration:new{
    subshell_occupancy = { helium_subshell_occupancy }
}

local helium = Element:new{
    name = "Helium",
    symbol = "He",
    number = 2,
    mass = 4.003,
    group = 18,
    period = 1,
    block = "s",
    electron_configuration = helium_electron_configuration
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
    name = "Lithium",
    symbol = "Li",
    number = 3,
    mass = 6.941,
    group = 1,
    period = 2,
    block = "s",
    electron_configuration = lithium_electron_configuration
}

local beryllium_subshell_occupancy = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local beryllium_electron_configuration = ElectronConfiguration:new{
    core = "He",
    subshell_occupancy = { beryllium_subshell_occupancy }
}

local beryllium = Element:new{
    name = "Beryllium",
    symbol = "Be",
    number = 4,
    mass = 9.012,
    group = 2,
    period = 2,
    block = "s",
    electron_configuration = beryllium_electron_configuration
}

local boron_subshell_occupancy1 = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local boron_subshell_occupancy2 = SubshellOccupancy:new{
    n = 2,
    l = "p",
    electron_count = 1
}

local boron_electron_configuration = ElectronConfiguration:new{
    core = "He",
    subshell_occupancy = {
        boron_subshell_occupancy1,
        boron_subshell_occupancy2
    }
}

local boron = Element:new{
    name = "Boron",
    symbol = "B",
    number = 5,
    mass = 10.811,
    group = 13,
    period = 2,
    block = "p",
    electron_configuration = boron_electron_configuration
}

local carbon_subshell_occupancy1 = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local carbon_subshell_occupancy2 = SubshellOccupancy:new{
    n = 2,
    l = "p",
    electron_count = 2
}

local carbon_electron_configuration = ElectronConfiguration:new{
    core = "He",
    subshell_occupancy = {
        carbon_subshell_occupancy1,
        carbon_subshell_occupancy2
    }
}

local carbon = Element:new{
    name = "Carbon",
    symbol = "C",
    number = 6,
    mass = 12.011,
    group = 14,
    period = 2,
    block = "p",
    electron_configuration = carbon_electron_configuration
}

local nitrogen_subshell_occupancy1 = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local nitrogen_subshell_occupancy2 = SubshellOccupancy:new{
    n = 2,
    l = "p",
    electron_count = 3
}

local nitrogen_electron_configuration = ElectronConfiguration:new{
    core = "He",
    subshell_occupancy = {
        nitrogen_subshell_occupancy1,
        nitrogen_subshell_occupancy2
    }
}

local nitrogen = Element:new{
    name = "Nitrogen",
    symbol = "N",
    number = 7,
    mass = 14.007,
    group = 15,
    period = 2,
    block = "p",
    electron_configuration = nitrogen_electron_configuration
}
