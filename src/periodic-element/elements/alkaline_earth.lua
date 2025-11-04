local Element = require("periodic-element.element")
local ElementSet = require("src.periodic-element.elements.element_set")
local ElectronConfiguration = require("periodic-element.element.electron_configuration")
local SubshellOccupancy = require("periodic-element.element.subshell_occupancy")

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
    oxidation_states = {2},
    electron_configuration = beryllium_electron_configuration
}

local magnesium_subshell_occupancy = SubshellOccupancy:new{
    n = 3,
    l = "s",
    electron_count = 2
}

local magnesium_electron_configuration = ElectronConfiguration:new{
    core = "Ne",
    subshell_occupancy = { magnesium_subshell_occupancy }
}

local magnesium = Element:new{
    name = "Magnesium",
    symbol = "Mg",
    number = 12,
    mass = 24.305,
    group = 2,
    period = 3,
    oxidation_states = {2},
    electron_configuration = magnesium_electron_configuration
}

local calcium_subshell_occupancy = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local calcium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = { calcium_subshell_occupancy }
}

local calcium = Element:new{
    name = "Calcium",
    symbol = "Ca",
    number = 20,
    mass = 40.078,
    group = 2,
    period = 4,
    oxidation_states = {2},
    electron_configuration = calcium_electron_configuration
}

local strontium_subshell_occupancy = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local strontium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = { strontium_subshell_occupancy }
}

local strontium = Element:new{
    name = "Strontium",
    symbol = "Sr",
    number = 38,
    mass = 87.62,
    group = 2,
    period = 5,
    oxidation_states = {2},
    electron_configuration = strontium_electron_configuration
}

local barium_subshell_occupancy = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local barium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = { barium_subshell_occupancy }
}

local barium = Element:new{
    name = "Barium",
    symbol = "Ba",
    number = 56,
    mass = 137.328,
    group = 2,
    period = 6,
    oxidation_states = {2},
    electron_configuration = barium_electron_configuration
}

local radium_subshell_occupancy = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local radium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = { radium_subshell_occupancy }
}

local radium = Element:new{
    name = "Radium",
    symbol = "Ra",
    number = 88,
    mass = 226.025,
    group = 2,
    period = 7,
    oxidation_states = {2},
    electron_configuration = radium_electron_configuration
}

local alkaline_earth_elements = ElementSet:new{
    beryllium, magnesium, calcium, strontium, barium, radium
}

return alkaline_earth_elements
