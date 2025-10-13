local Element = require("element")
local ElectronConfiguration = require("element.electron_configuration")
local SubshellOccupancy = require("element.subshell_occupancy")

local lanthanum_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 1
}

local lanthanum_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local lanthanum_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        lanthanum_subshell_occupancy1,
        lanthanum_subshell_occupancy2
    }
}

local lanthanum = Element:new{
    name = "Lanthanum",
    symbol = "La",
    number = 57,
    mass = 138.905,
    group = 3,
    period = 6,
    block = "d",
    electron_configuration = lanthanum_electron_configuration
}

local cerium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 1
}

local cerium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 1
}

local cerium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local cerium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        cerium_subshell_occupancy1,
        cerium_subshell_occupancy2,
        cerium_subshell_occupancy3
    }
}

local cerium = Element:new{
    name = "Cerium",
    symbol = "Ce",
    number = 58,
    mass = 140.116,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = cerium_electron_configuration
}

local praseodymium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 3
}

local praseodymium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local praseodymium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        praseodymium_subshell_occupancy1,
        praseodymium_subshell_occupancy2
    }
}

local praseodymium = Element:new{
    name = "Praseodymium",
    symbol = "Pr",
    number = 59,
    mass = 140.908,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = praseodymium_electron_configuration
}

local neodymium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 4
}

local neodymium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local neodymium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        neodymium_subshell_occupancy1,
        neodymium_subshell_occupancy2
    }
}

local neodymium = Element:new{
    name = "Neodymium",
    symbol = "Nd",
    number = 60,
    mass = 144.243,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = neodymium_electron_configuration
}

local promethium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 5
}

local promethium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local promethium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        promethium_subshell_occupancy1,
        promethium_subshell_occupancy2
    }
}

local promethium = Element:new{
    name = "Promethium",
    symbol = "Pm",
    number = 61,
    mass = 144.913,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = promethium_electron_configuration
}

local samarium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 6
}

local samarium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local samarium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        samarium_subshell_occupancy1,
        samarium_subshell_occupancy2
    }
}

local samarium = Element:new{
    name = "Samarium",
    symbol = "Sm",
    number = 62,
    mass = 150.36,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = samarium_electron_configuration
}

local europium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 7
}

local europium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local europium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        europium_subshell_occupancy1,
        europium_subshell_occupancy2
    }
}

local europium = Element:new{
    name = "Europium",
    symbol = "Eu",
    number = 63,
    mass = 151.964,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = europium_electron_configuration
}

local gadolinium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 7
}

local gadolinium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 1
}

local gadolinium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local gadolinium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        gadolinium_subshell_occupancy1,
        gadolinium_subshell_occupancy2,
        gadolinium_subshell_occupancy3
    }
}

local gadolinium = Element:new{
    name = "Gadolinium",
    symbol = "Gd",
    number = 64,
    mass = 157.25,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = gadolinium_electron_configuration
}

local terbium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 9
}

local terbium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local terbium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        terbium_subshell_occupancy1,
        terbium_subshell_occupancy2
    }
}

local terbium = Element:new{
    name = "Terbium",
    symbol = "Tb",
    number = 65,
    mass = 158.925,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = terbium_electron_configuration
}

local dysprosium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 10
}

local dysprosium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local dysprosium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        dysprosium_subshell_occupancy1,
        dysprosium_subshell_occupancy2
    }
}

local dysprosium = Element:new{
    name = "Dysprosium",
    symbol = "Dy",
    number = 66,
    mass = 162.500,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = dysprosium_electron_configuration
}

local holmium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 11
}

local holmium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local holmium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        holmium_subshell_occupancy1,
        holmium_subshell_occupancy2
    }
}

local holmium = Element:new{
    name = "Holmium",
    symbol = "Ho",
    number = 67,
    mass = 164.930,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = holmium_electron_configuration
}

local erbium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 12
}

local erbium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local erbium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        erbium_subshell_occupancy1,
        erbium_subshell_occupancy2
    }
}

local erbium = Element:new{
    name = "Erbium",
    symbol = "Er",
    number = 68,
    mass = 167.259,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = erbium_electron_configuration
}

local thulium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 13
}

local thulium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local thulium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        thulium_subshell_occupancy1,
        thulium_subshell_occupancy2
    }
}

local thulium = Element:new{
    name = "Thulium",
    symbol = "Tm",
    number = 69,
    mass = 168.934,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = thulium_electron_configuration
}

local ytterbium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local ytterbium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local ytterbium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        ytterbium_subshell_occupancy1,
        ytterbium_subshell_occupancy2
    }
}

local ytterbium = Element:new{
    name = "Ytterbium",
    symbol = "Yb",
    number = 70,
    mass = 173.055,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = ytterbium_electron_configuration
}

local lutetium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local lutetium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 1
}

local lutetium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local lutetium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        lutetium_subshell_occupancy1,
        lutetium_subshell_occupancy2,
        lutetium_subshell_occupancy3
    }
}

local lutetium = Element:new{
    name = "Lutetium",
    symbol = "Lu",
    number = 71,
    mass = 174.967,
    group = nil,
    period = 6,
    block = "f",
    electron_configuration = lutetium_electron_configuration
}
