local Element = require("element")
local ElectronConfiguration = require("element.electron_configuration")
local SubshellOccupancy = require("element.subshell_occupancy")

local aluminum_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "s",
    electron_count = 2
}

local aluminum_subshell_occupancy2 = SubshellOccupancy:new{
    n = 3,
    l = "p",
    electron_count = 1
}

local aluminum_electron_configuration = ElectronConfiguration:new{
    core = "Ne",
    subshell_occupancy = {
        aluminum_subshell_occupancy1,
        aluminum_subshell_occupancy2
    }
}

local aluminum = Element:new{
    name = "Aluminum",
    symbol = "Al",
    number = 13,
    mass = 26.982,
    group = 13,
    period = 3,
    block = "p",
    electron_configuration = aluminum_electron_configuration
}

local zinc_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 10
}

local zinc_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local zinc_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        zinc_subshell_occupancy1,
        zinc_subshell_occupancy2
    }
}

local zinc = Element:new{
    name = "Zinc",
    symbol = "Zn",
    number = 30,
    mass = 65.38,
    group = 12,
    period = 4,
    block = "d",
    electron_configuration = zinc_electron_configuration
}

local gallium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 10
}

local gallium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local gallium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 4,
    l = "p",
    electron_count = 1
}

local gallium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        gallium_subshell_occupancy1,
        gallium_subshell_occupancy2,
        gallium_subshell_occupancy3
    }
}

local gallium = Element:new{
    name = "Gallium",
    symbol = "Ga",
    number = 31,
    mass = 69.723,
    group = 13,
    period = 4,
    block = "p",
    electron_configuration = gallium_electron_configuration
}

local cadmium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local cadmium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local cadmium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        cadmium_subshell_occupancy1,
        cadmium_subshell_occupancy2,
    }
}

local cadmium = Element:new{
    name = "Cadmium",
    symbol = "Cd",
    number = 48,
    mass = 112.414,
    group = 12,
    period = 5,
    block = "d",
    electron_configuration = cadmium_electron_configuration
}

local indium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local indium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local indium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 5,
    l = "p",
    electron_count = 1
}

local indium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        indium_subshell_occupancy1,
        indium_subshell_occupancy2,
        indium_subshell_occupancy3
    }
}

local indium = Element:new{
    name = "Indium",
    symbol = "In",
    number = 49,
    mass = 114.818,
    group = 13,
    period = 5,
    block = "p",
    electron_configuration = indium_electron_configuration
}

local tin_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local tin_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local tin_subshell_occupancy3 = SubshellOccupancy:new{
    n = 5,
    l = "p",
    electron_count = 2
}

local tin_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        tin_subshell_occupancy1,
        tin_subshell_occupancy2,
        tin_subshell_occupancy3
    }
}

local tin = Element:new{
    name = "Tin",
    symbol = "Sn",
    number = 50,
    mass = 118.711,
    group = 14,
    period = 5,
    block = "p",
    electron_configuration = tin_electron_configuration
}

local mercury_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local mercury_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 10
}

local mercury_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local mercury_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        mercury_subshell_occupancy1,
        mercury_subshell_occupancy2,
        mercury_subshell_occupancy3
    }
}

local mercury = Element:new{
    name = "Mercury",
    symbol = "Hg",
    number = 80,
    mass = 200.592,
    group = 12,
    period = 6,
    block = "d",
    electron_configuration = mercury_electron_configuration
}

local thallium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local thallium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 10
}

local thallium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local thallium_subshell_occupancy4 = SubshellOccupancy:new{
    n = 6,
    l = "p",
    electron_count = 1
}

local thallium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        thallium_subshell_occupancy1,
        thallium_subshell_occupancy2,
        thallium_subshell_occupancy3,
        thallium_subshell_occupancy4
    }
}

local thallium = Element:new{
    name = "Thallium",
    symbol = "Tl",
    number = 81,
    mass = 204.383,
    group = 13,
    period = 6,
    block = "p",
    electron_configuration = thallium_electron_configuration
}

local lead_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local lead_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 10
}

local lead_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local lead_subshell_occupancy4 = SubshellOccupancy:new{
    n = 6,
    l = "p",
    electron_count = 2
}

local lead_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        lead_subshell_occupancy1,
        lead_subshell_occupancy2,
        lead_subshell_occupancy3,
        lead_subshell_occupancy4
    }
}

local lead = Element:new{
    name = "Lead",
    symbol = "Pb",
    number = 82,
    mass = 207.2,
    group = 14,
    period = 6,
    block = "p",
    electron_configuration = lead_electron_configuration
}

local bismuth_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local bismuth_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 10
}

local bismuth_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local bismuth_subshell_occupancy4 = SubshellOccupancy:new{
    n = 6,
    l = "p",
    electron_count = 3
}

local bismuth_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        bismuth_subshell_occupancy1,
        bismuth_subshell_occupancy2,
        bismuth_subshell_occupancy3,
        bismuth_subshell_occupancy4
    }
}

local bismuth = Element:new{
    name = "Bismuth",
    symbol = "Bi",
    number = 83,
    mass = 208.980,
    group = 15,
    period = 6,
    block = "p",
    electron_configuration = bismuth_electron_configuration
}

local polonium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local polonium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 10
}

local polonium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local polonium_subshell_occupancy4 = SubshellOccupancy:new{
    n = 6,
    l = "p",
    electron_count = 4
}

local polonium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        polonium_subshell_occupancy1,
        polonium_subshell_occupancy2,
        polonium_subshell_occupancy3,
        polonium_subshell_occupancy4
    }
}

local polonium = Element:new{
    name = "Polonium",
    symbol = "Po",
    number = 84,
    mass = 208.982,
    group = 16,
    period = 6,
    block = "p",
    electron_configuration = polonium_electron_configuration
}

local copernicium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local copernicium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 10
}

local copernicium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local copernicium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        copernicium_subshell_occupancy1,
        copernicium_subshell_occupancy2,
        copernicium_subshell_occupancy3
    }
}

local copernicium = Element:new{
    name = "Copernicium",
    symbol = "Cn",
    number = 112,
    mass = 285,
    group = 12,
    period = 7,
    block = "d",
    electron_configuration = copernicium_electron_configuration
}

local nihonium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local nihonium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 10
}

local nihonium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local nihonium_subshell_occupancy4 = SubshellOccupancy:new{
    n = 7,
    l = "p",
    electron_count = 1
}

local nihonium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        nihonium_subshell_occupancy1,
        nihonium_subshell_occupancy2,
        nihonium_subshell_occupancy3,
        nihonium_subshell_occupancy4
    }
}

local nihonium = Element:new{
    name = "Nihonium",
    symbol = "Nh",
    number = 113,
    mass = 286,
    group = 13,
    period = 7,
    block = "p",
    electron_configuration = nihonium_electron_configuration
}

local flerovium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local flerovium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 10
}

local flerovium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local flerovium_subshell_occupancy4 = SubshellOccupancy:new{
    n = 7,
    l = "p",
    electron_count = 2
}

local flerovium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        flerovium_subshell_occupancy1,
        flerovium_subshell_occupancy2,
        flerovium_subshell_occupancy3,
        flerovium_subshell_occupancy4
    }
}

local flerovium = Element:new{
    name = "Flerovium",
    symbol = "Fl",
    number = 114,
    mass = 289,
    group = 14,
    period = 7,
    block = "p",
    electron_configuration = flerovium_electron_configuration
}

local moscovium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local moscovium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 10
}

local moscovium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local moscovium_subshell_occupancy4 = SubshellOccupancy:new{
    n = 7,
    l = "p",
    electron_count = 3
}

local moscovium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        moscovium_subshell_occupancy1,
        moscovium_subshell_occupancy2,
        moscovium_subshell_occupancy3,
        moscovium_subshell_occupancy4
    }
}

local moscovium = Element:new{
    name = "Moscovium",
    symbol = "Mc",
    number = 115,
    mass = 289,
    group = 15,
    period = 7,
    block = "p",
    electron_configuration = moscovium_electron_configuration
}

local livermorium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local livermorium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 10
}

local livermorium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local livermorium_subshell_occupancy4 = SubshellOccupancy:new{
    n = 7,
    l = "p",
    electron_count = 4
}

local livermorium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        livermorium_subshell_occupancy1,
        livermorium_subshell_occupancy2,
        livermorium_subshell_occupancy3,
        livermorium_subshell_occupancy4
    }
}

local livermorium = Element:new{
    name = "Livermorium",
    symbol = "Lv",
    number = 116,
    mass = 293,
    group = 16,
    period = 7,
    block = "p",
    electron_configuration = livermorium_electron_configuration
}
