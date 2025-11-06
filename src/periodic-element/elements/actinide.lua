local Element = require("periodic-element.element")
local ElementSet = require("src.periodic-element.elements.element_set")
local ElectronConfiguration = require("periodic-element.element.electron_configuration")
local SubshellOccupancy = require("periodic-element.element.subshell_occupancy")

local actinium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 1
}

local actinium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local actinium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        actinium_subshell_occupancy1,
        actinium_subshell_occupancy2
    }
}

local actinium = Element:new{
    name = "Actinium",
    symbol = "Ac",
    number = 89,
    mass = 227.028,
    group = nil,
    period = 7,
    oxidation_states = {3},
    electron_configuration = actinium_electron_configuration,
    electronegativity = 1.1,
    atomic_radius = 260,
    ionization_energy = 5.17,
    melting_point = 1324,
    boiling_point = 3471,
    density = 10.07,
    standard_state = "solid"
}

local thorium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 2
}

local thorium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local thorium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        thorium_subshell_occupancy1,
        thorium_subshell_occupancy2
    }
}

local thorium = Element:new{
    name = "Thorium",
    symbol = "Th",
    number = 90,
    mass = 232.038,
    group = nil,
    period = 7,
    oxidation_states = {4},
    electron_configuration = thorium_electron_configuration,
    electronegativity = 1.3,
    atomic_radius = 237,
    ionization_energy = 6.08,
    melting_point = 2023,
    boiling_point = 5061,
    density = 11.72,
    standard_state = "solid"
}

local protactinium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 2
}

local protactinium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 1
}

local protactinium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local protactinium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        protactinium_subshell_occupancy1,
        protactinium_subshell_occupancy2,
        protactinium_subshell_occupancy3
    }
}

local protactinium = Element:new{
    name = "Protactinium",
    symbol = "Pa",
    number = 91,
    mass = 231.036,
    group = nil,
    period = 7,
    oxidation_states = {4, 5},
    electron_configuration = protactinium_electron_configuration,
    electronegativity = 1.5,
    atomic_radius = 243,
    ionization_energy = 5.89,
    melting_point = 1845,
    density = 15.37,
    standard_state = "solid"
}

local uranium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 3
}

local uranium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 1
}

local uranium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local uranium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        uranium_subshell_occupancy1,
        uranium_subshell_occupancy2,
        uranium_subshell_occupancy3
    }
}

local uranium = Element:new{
    name = "Uranium",
    symbol = "U",
    number = 92,
    mass = 238.029,
    group = nil,
    period = 7,
    oxidation_states = {3, 4, 5, 6},
    electron_configuration = uranium_electron_configuration,
    electronegativity = 1.38,
    atomic_radius = 240,
    ionization_energy = 6.194,
    melting_point = 1408,
    boiling_point = 4404,
    density = 18.95,
    standard_state = "solid"
}

local neptunium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 4
}

local neptunium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 1
}

local neptunium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local neptunium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        neptunium_subshell_occupancy1,
        neptunium_subshell_occupancy2,
        neptunium_subshell_occupancy3
    }
}

local neptunium = Element:new{
    name = "Neptunium",
    symbol = "Np",
    number = 93,
    mass = 237.048,
    group = nil,
    period = 7,
    oxidation_states = {3, 4, 5, 6},
    electron_configuration = neptunium_electron_configuration,
    electronegativity = 1.36,
    atomic_radius = 221,
    ionization_energy = 6.266,
    melting_point = 917,
    boiling_point = 4175,
    density = 20.25,
    standard_state = "solid"
}

local plutonium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 6
}

local plutonium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local plutonium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        plutonium_subshell_occupancy1,
        plutonium_subshell_occupancy2
    }
}

local plutonium = Element:new{
    name = "Plutonium",
    symbol = "Pu",
    number = 94,
    mass = 244.064,
    group = nil,
    period = 7,
    oxidation_states = {3, 4, 5, 6},
    electron_configuration = plutonium_electron_configuration,
    electronegativity = 1.28,
    atomic_radius = 243,
    ionization_energy = 6.06,
    melting_point = 913,
    boiling_point = 3501,
    density = 19.84,
    standard_state = "solid"
}

local americium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 7
}

local americium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local americium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        americium_subshell_occupancy1,
        americium_subshell_occupancy2
    }
}

local americium = Element:new{
    name = "Americium",
    symbol = "Am",
    number = 95,
    mass = 243.061,
    group = nil,
    period = 7,
    oxidation_states = {3, 4, 5, 6},
    electron_configuration = americium_electron_configuration,
    electronegativity = 1.3,
    atomic_radius = 244,
    ionization_energy = 5.993,
    melting_point = 1449,
    boiling_point = 2284,
    density = 13.69,
    standard_state = "solid"
}

local curium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 7
}

local curium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 1
}

local curium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local curium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        curium_subshell_occupancy1,
        curium_subshell_occupancy2,
        curium_subshell_occupancy3
    }
}

local curium = Element:new{
    name = "Curium",
    symbol = "Cm",
    number = 96,
    mass = 247.070,
    group = nil,
    period = 7,
    oxidation_states = {3},
    electron_configuration = curium_electron_configuration,
    electronegativity = 1.3,
    atomic_radius = 245,
    ionization_energy = 6.02,
    melting_point = 1618,
    boiling_point = 3400,
    density = 13.51,
    standard_state = "solid"
}

local berkelium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 9
}

local berkelium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local berkelium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        berkelium_subshell_occupancy1,
        berkelium_subshell_occupancy2
    }
}

local berkelium = Element:new{
    name = "Berkelium",
    symbol = "Bk",
    number = 97,
    mass = 247.070,
    group = nil,
    period = 7,
    oxidation_states = {3, 4},
    electron_configuration = berkelium_electron_configuration,
    electronegativity = 1.3,
    atomic_radius = 244,
    ionization_energy = 6.23,
    melting_point = 1323,
    density = 14,
    standard_state = "solid"
}

local actinides = ElementSet:new{
    actinium, thorium, protactinium, uranium, neptunium, plutonium, americium,
    curium, berkelium
}

return actinides
