local Element = require("tichem.element")
local ElementCollection = require("tichem.elements.element_collection")
local ElectronConfiguration = require("tichem.element.electron_configuration")
local SubshellOccupancy = require("tichem.element.subshell_occupancy")

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
    oxidation_states = {3},
    electron_configuration = boron_electron_configuration
}

local silicon_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "s",
    electron_count = 2
}

local silicon_subshell_occupancy2 = SubshellOccupancy:new{
    n = 3,
    l = "p",
    electron_count = 2
}

local silicon_electron_configuration = ElectronConfiguration:new{
    core = "Ne",
    subshell_occupancy = {
        silicon_subshell_occupancy1,
        silicon_subshell_occupancy2
    }
}

local silicon = Element:new{
    name = "Silicon",
    symbol = "Si",
    number = 14,
    mass = 28.086,
    group = 14,
    period = 3,
    block = "p",
    oxidation_states = {-4, 2, 4},
    electron_configuration = silicon_electron_configuration
}

local germanium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 10
}

local germanium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local germanium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 4,
    l = "p",
    electron_count = 2
}

local germanium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        germanium_subshell_occupancy1,
        germanium_subshell_occupancy2,
        germanium_subshell_occupancy3
    }
}

local germanium = Element:new{
    name = "Germanium",
    symbol = "Ge",
    number = 32,
    mass = 72.631,
    group = 14,
    period = 4,
    block = "p",
    oxidation_states = {2, 4},
    electron_configuration = germanium_electron_configuration
}

local arsenic_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 10
}

local arsenic_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local arsenic_subshell_occupancy3 = SubshellOccupancy:new{
    n = 4,
    l = "p",
    electron_count = 3
}

local arsenic_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        arsenic_subshell_occupancy1,
        arsenic_subshell_occupancy2,
        arsenic_subshell_occupancy3
    }
}

local arsenic = Element:new{
    name = "Arsenic",
    symbol = "As",
    number = 33,
    mass = 74.922,
    group = 15,
    period = 4,
    block = "p",
    oxidation_states = {-3, 3, 5},
    electron_configuration = arsenic_electron_configuration
}

local antimony_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local antimony_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local antimony_subshell_occupancy3 = SubshellOccupancy:new{
    n = 5,
    l = "p",
    electron_count = 3
}

local antimony_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        antimony_subshell_occupancy1,
        antimony_subshell_occupancy2,
        antimony_subshell_occupancy3
    }
}

local antimony = Element:new{
    name = "Antimony",
    symbol = "Sb",
    number = 51,
    mass = 121.760,
    group = 15,
    period = 5,
    block = "p",
    oxidation_states = {-3, 3, 5},
    electron_configuration = antimony_electron_configuration
}

local tellurium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local tellurium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local tellurium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 5,
    l = "p",
    electron_count = 4
}

local tellurium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        tellurium_subshell_occupancy1,
        tellurium_subshell_occupancy2,
        tellurium_subshell_occupancy3
    }
}

local tellurium = Element:new{
    name = "Tellurium",
    symbol = "Te",
    number = 52,
    mass = 127.6,
    group = 16,
    period = 5,
    block = "p",
    oxidation_states = {-2, 4, 6},
    electron_configuration = tellurium_electron_configuration
}

local metalloids = ElementCollection:new{
    boron, silicon, germanium, arsenic, antimony, tellurium
}

return metalloids
