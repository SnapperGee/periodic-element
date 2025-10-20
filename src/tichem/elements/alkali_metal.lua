local Element = require("tichem.element")
local Elements = require("tichem.elements")
local ElectronConfiguration = require("tichem.element.electron_configuration")
local SubshellOccupancy = require("tichem.element.subshell_occupancy")

local lithium_subshell_occupancy = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 1
}

local lithium_electron_configuration = ElectronConfiguration:new{
    core = "He",
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
    oxidation_states = {1},
    electron_configuration = lithium_electron_configuration
}

local sodium_subshell_occupancy = SubshellOccupancy:new{
    n = 3,
    l = "s",
    electron_count = 1
}

local sodium_electron_configuration = ElectronConfiguration:new{
    core = "Ne",
    subshell_occupancy = { sodium_subshell_occupancy }
}

local sodium = Element:new{
    name = "Sodium",
    symbol = "Na",
    number = 11,
    mass = 22.990,
    group = 1,
    period = 3,
    block = "s",
    oxidation_states = {1},
    electron_configuration = sodium_electron_configuration
}

local potassium_subshell_occupancy = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 1
}

local potassium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = { potassium_subshell_occupancy }
}

local potassium = Element:new{
    name = "Potassium",
    symbol = "K",
    number = 19,
    mass = 39.098,
    group = 1,
    period = 4,
    block = "s",
    oxidation_states = {1},
    electron_configuration = potassium_electron_configuration
}

local rubidium_subshell_occupancy = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 1
}

local rubidium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = { rubidium_subshell_occupancy }
}

local rubidium = Element:new{
    name = "Rubidium",
    symbol = "Rb",
    number = 37,
    mass = 85.468,
    group = 1,
    period = 5,
    block = "s",
    oxidation_states = {1},
    electron_configuration = rubidium_electron_configuration
}

local cesium_subshell_occupancy = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 1
}

local cesium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = { cesium_subshell_occupancy }
}

local cesium = Element:new{
    name = "Cesium",
    symbol = "Cs",
    number = 55,
    mass = 132.905,
    group = 1,
    period = 6,
    block = "s",
    oxidation_states = {1},
    electron_configuration = cesium_electron_configuration
}

local francium_subshell_occupancy = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 1
}

local francium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = { francium_subshell_occupancy }
}

local francium = Element:new{
    name = "Francium",
    symbol = "Fr",
    number = 87,
    mass = 223.020,
    group = 1,
    period = 7,
    block = "s",
    oxidation_states = {1},
    electron_configuration = francium_electron_configuration
}

local alkali_metals = Elements:new{
    lithium, sodium, potassium, rubidium, cesium, francium
}

return alkali_metals
