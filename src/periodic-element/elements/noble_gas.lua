local Element = require("periodic-element.element")
local ElementSet = require("src.periodic-element.elements.element_set")
local ElectronConfiguration = require("periodic-element.element.electron_configuration")
local SubshellOccupancy = require("periodic-element.element.subshell_occupancy")

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
    oxidation_states = {0},
    electron_configuration = helium_electron_configuration
}

local neon_subshell_occupancy1 = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local neon_subshell_occupancy2 = SubshellOccupancy:new{
    n = 2,
    l = "p",
    electron_count = 6
}

local neon_electron_configuration = ElectronConfiguration:new{
    core = "He",
    subshell_occupancy = {
        neon_subshell_occupancy1,
        neon_subshell_occupancy2
    }
}

local neon = Element:new{
    name = "Neon",
    symbol = "Ne",
    number = 10,
    mass = 20.180,
    group = 18,
    period = 2,
    oxidation_states = {0},
    electron_configuration = neon_electron_configuration
}

local argon_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "s",
    electron_count = 2
}

local argon_subshell_occupancy2 = SubshellOccupancy:new{
    n = 3,
    l = "p",
    electron_count = 6
}

local argon_electron_configuration = ElectronConfiguration:new{
    core = "Ne",
    subshell_occupancy = {
        argon_subshell_occupancy1,
        argon_subshell_occupancy2
    }
}

local argon = Element:new{
    name = "Argon",
    symbol = "Ar",
    number = 18,
    mass = 39.948,
    group = 18,
    period = 3,
    oxidation_states = {0},
    electron_configuration = argon_electron_configuration
}

local krypton_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 10
}

local krypton_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local krypton_subshell_occupancy3 = SubshellOccupancy:new{
    n = 4,
    l = "p",
    electron_count = 6
}

local krypton_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        krypton_subshell_occupancy1,
        krypton_subshell_occupancy2,
        krypton_subshell_occupancy3
    }
}

local krypton = Element:new{
    name = "Krypton",
    symbol = "Kr",
    number = 36,
    mass = 83.798,
    group = 18,
    period = 4,
    oxidation_states = {0},
    electron_configuration = krypton_electron_configuration
}

local xenon_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local xenon_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local xenon_subshell_occupancy3 = SubshellOccupancy:new{
    n = 5,
    l = "p",
    electron_count = 6
}

local xenon_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        xenon_subshell_occupancy1,
        xenon_subshell_occupancy2,
        xenon_subshell_occupancy3
    }
}

local xenon = Element:new{
    name = "Xenon",
    symbol = "Xe",
    number = 54,
    mass = 131.249,
    group = 18,
    period = 5,
    oxidation_states = {0},
    electron_configuration = xenon_electron_configuration
}

local radon_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local radon_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 10
}

local radon_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local radon_subshell_occupancy4 = SubshellOccupancy:new{
    n = 6,
    l = "p",
    electron_count = 6
}

local radon_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        radon_subshell_occupancy1,
        radon_subshell_occupancy2,
        radon_subshell_occupancy3,
        radon_subshell_occupancy4
    }
}

local radon = Element:new{
    name = "Radon",
    symbol = "Rn",
    number = 86,
    mass = 222.018,
    group = 18,
    period = 6,
    oxidation_states = {0},
    electron_configuration = radon_electron_configuration
}

local oganesson_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local oganesson_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 10
}

local oganesson_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local oganesson_subshell_occupancy4 = SubshellOccupancy:new{
    n = 7,
    l = "p",
    electron_count = 6
}

local oganesson_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        oganesson_subshell_occupancy1,
        oganesson_subshell_occupancy2,
        oganesson_subshell_occupancy3,
        oganesson_subshell_occupancy4
    }
}

local oganesson = Element:new{
    name = "Oganesson",
    symbol = "Og",
    number = 118,
    mass = 295.216,
    group = 18,
    period = 7,
    oxidation_states = {-1, 0, 1, 2, 4, 6},
    electron_configuration = oganesson_electron_configuration
}

local noble_gases = ElementSet:new{
    helium, neon, argon, krypton, xenon, radon, oganesson
}

return noble_gases
