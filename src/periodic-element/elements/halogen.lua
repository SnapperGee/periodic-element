local Element = require("periodic-element.element")
local ElementSet = require("src.periodic-element.elements.element_set")
local ElectronConfiguration = require("periodic-element.element.electron_configuration")
local SubshellOccupancy = require("periodic-element.element.subshell_occupancy")

local fluorine_subshell_occupancy1 = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local fluorine_subshell_occupancy2 = SubshellOccupancy:new{
    n = 2,
    l = "p",
    electron_count = 5
}

local fluorine_electron_configuration = ElectronConfiguration.new{
    core = "He",
    subshell_occupancy = {
        fluorine_subshell_occupancy1,
        fluorine_subshell_occupancy2
    }
}

local fluorine = Element.new{
    name = "Fluorine",
    symbol = "F",
    number = 9,
    mass = 18.998,
    group = 17,
    period = 2,
    oxidation_states = {-1},
    electron_configuration = fluorine_electron_configuration
}

local chlorine_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "s",
    electron_count = 2
}

local chlorine_subshell_occupancy2 = SubshellOccupancy:new{
    n = 3,
    l = "p",
    electron_count = 5
}

local chlorine_electron_configuration = ElectronConfiguration.new{
    core = "Ne",
    subshell_occupancy = {
        chlorine_subshell_occupancy1,
        chlorine_subshell_occupancy2
    }
}

local chlorine = Element.new{
    name = "Chlorine",
    symbol = "Cl",
    number = 17,
    mass = 35.453,
    group = 17,
    period = 3,
    oxidation_states = {-1, 1, 5, 7},
    electron_configuration = chlorine_electron_configuration
}

local bromine_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 10
}

local bromine_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local bromine_subshell_occupancy3 = SubshellOccupancy:new{
    n = 4,
    l = "p",
    electron_count = 5
}

local bromine_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = {
        bromine_subshell_occupancy1,
        bromine_subshell_occupancy2,
        bromine_subshell_occupancy3
    }
}

local bromine = Element.new{
    name = "Bromine",
    symbol = "Br",
    number = 35,
    mass = 79.904,
    group = 17,
    period = 4,
    oxidation_states = {-1, 1, 5},
    electron_configuration = bromine_electron_configuration
}

local iodine_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local iodine_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local iodine_subshell_occupancy3 = SubshellOccupancy:new{
    n = 5,
    l = "p",
    electron_count = 5
}

local iodine_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = {
        iodine_subshell_occupancy1,
        iodine_subshell_occupancy2,
        iodine_subshell_occupancy3
    }
}

local iodine = Element.new{
    name = "Iodine",
    symbol = "I",
    number = 53,
    mass = 126.904,
    group = 17,
    period = 5,
    oxidation_states = {-1, 1, 5, 7},
    electron_configuration = iodine_electron_configuration
}

local astatine_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local astatine_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 10
}

local astatine_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local astatine_subshell_occupancy4 = SubshellOccupancy:new{
    n = 6,
    l = "p",
    electron_count = 5
}

local astatine_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        astatine_subshell_occupancy1,
        astatine_subshell_occupancy2,
        astatine_subshell_occupancy3,
        astatine_subshell_occupancy4
    }
}

local astatine = Element.new{
    name = "Astatine",
    symbol = "At",
    number = 85,
    mass = 209.987,
    group = 17,
    period = 6,
    oxidation_states = {-1, 1, 3, 5, 7},
    electron_configuration = astatine_electron_configuration
}

local halogens = ElementSet:new{
    fluorine, chlorine, bromine, iodine, astatine
}

return halogens
