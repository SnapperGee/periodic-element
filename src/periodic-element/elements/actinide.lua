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
    group = 3,
    period = 7,
    block = "d",
    oxidation_states = {3},
    electron_configuration = actinium_electron_configuration
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
    block = "f",
    oxidation_states = {4},
    electron_configuration = thorium_electron_configuration
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
    block = "f",
    oxidation_states = {4, 5},
    electron_configuration = protactinium_electron_configuration
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
    block = "f",
    oxidation_states = {3, 4, 5, 6},
    electron_configuration = uranium_electron_configuration
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
    block = "f",
    oxidation_states = {3, 4, 5, 6},
    electron_configuration = neptunium_electron_configuration
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
    block = "f",
    oxidation_states = {3, 4, 5, 6},
    electron_configuration = plutonium_electron_configuration
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
    block = "f",
    oxidation_states = {3, 4, 5, 6},
    electron_configuration = americium_electron_configuration
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
    block = "f",
    oxidation_states = {3},
    electron_configuration = curium_electron_configuration
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
    block = "f",
    oxidation_states = {3, 4},
    electron_configuration = berkelium_electron_configuration
}

local californium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 10
}

local californium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local californium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        californium_subshell_occupancy1,
        californium_subshell_occupancy2
    }
}

local californium = Element:new{
    name = "Californium",
    symbol = "Cf",
    number = 98,
    mass = 251.080,
    group = nil,
    period = 7,
    block = "f",
    oxidation_states = {3},
    electron_configuration = californium_electron_configuration
}

local einsteinium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 11
}

local einsteinium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local einsteinium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        einsteinium_subshell_occupancy1,
        einsteinium_subshell_occupancy2
    }
}

local einsteinium = Element:new{
    name = "Einsteinium",
    symbol = "Es",
    number = 99,
    mass = 254,
    group = nil,
    period = 7,
    block = "f",
    oxidation_states = {3},
    electron_configuration = einsteinium_electron_configuration
}

local fermium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 12
}

local fermium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local fermium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        fermium_subshell_occupancy1,
        fermium_subshell_occupancy2
    }
}

local fermium = Element:new{
    name = "Fermium",
    symbol = "Fm",
    number = 100,
    mass = 257.095,
    group = nil,
    period = 7,
    block = "f",
    oxidation_states = {3},
    electron_configuration = fermium_electron_configuration
}

local mendelevium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 13
}

local mendelevium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local mendelevium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        mendelevium_subshell_occupancy1,
        mendelevium_subshell_occupancy2
    }
}

local mendelevium = Element:new{
    name = "Mendelevium",
    symbol = "Md",
    number = 101,
    mass = 258.1,
    group = nil,
    period = 7,
    block = "f",
    oxidation_states = {2, 3},
    electron_configuration = mendelevium_electron_configuration
}

local nobelium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local nobelium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local nobelium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        nobelium_subshell_occupancy1,
        nobelium_subshell_occupancy2
    }
}

local nobelium = Element:new{
    name = "Nobelium",
    symbol = "No",
    number = 102,
    mass = 259.101,
    group = nil,
    period = 7,
    block = "f",
    oxidation_states = {2, 3},
    electron_configuration = nobelium_electron_configuration
}

local lawrencium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local lawrencium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 1
}

local lawrencium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local lawrencium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        lawrencium_subshell_occupancy1,
        lawrencium_subshell_occupancy2,
        lawrencium_subshell_occupancy3
    }
}

local lawrencium = Element:new{
    name = "Lawrencium",
    symbol = "Lr",
    number = 103,
    mass = 266.120,
    group = nil,
    period = 7,
    block = "f",
    oxidation_states = {3},
    electron_configuration = lawrencium_electron_configuration
}

local actinides = ElementSet:new{
    actinium, thorium, protactinium, uranium, neptunium, plutonium, americium,
    curium, berkelium, californium, einsteinium, fermium, mendelevium, nobelium,
    lawrencium
}

return actinides
