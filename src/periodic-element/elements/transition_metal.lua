local Element = require("periodic-element.element")
local ElementArray = require("periodic-element.elements.element_array")
local ElectronConfiguration = require("periodic-element.element.electron_configuration")
local SubshellOccupancy = require("periodic-element.element.subshell_occupancy")

local scandium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 1
}

local scandium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local scandium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        scandium_subshell_occupancy1,
        scandium_subshell_occupancy2
    }
}

local scandium = Element:new{
    name = "Scandium",
    symbol = "Sc",
    number = 21,
    mass = 44.956,
    group = 3,
    period = 4,
    block = "d",
    oxidation_states = {3},
    electron_configuration = scandium_electron_configuration
}

local titanium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 2
}

local titanium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local titanium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        titanium_subshell_occupancy1,
        titanium_subshell_occupancy2
    }
}

local titanium = Element:new{
    name = "Titanium",
    symbol = "Ti",
    number = 22,
    mass = 47.88,
    group = 4,
    period = 4,
    block = "d",
    oxidation_states = {2, 3, 4},
    electron_configuration = titanium_electron_configuration
}

local vanadium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 3
}

local vanadium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local vanadium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        vanadium_subshell_occupancy1,
        vanadium_subshell_occupancy2
    }
}

local vanadium = Element:new{
    name = "Vanadium",
    symbol = "V",
    number = 23,
    mass = 50.942,
    group = 5,
    period = 4,
    block = "d",
    oxidation_states = {2, 3, 4, 5},
    electron_configuration = vanadium_electron_configuration
}

local chromium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 5
}

local chromium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 1
}

local chromium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        chromium_subshell_occupancy1,
        chromium_subshell_occupancy2
    }
}

local chromium = Element:new{
    name = "Chromium",
    symbol = "Cr",
    number = 24,
    mass = 51.996,
    group = 6,
    period = 4,
    block = "d",
    oxidation_states = {2, 3, 6},
    electron_configuration = chromium_electron_configuration
}

local manganese_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 5
}

local manganese_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local manganese_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        manganese_subshell_occupancy1,
        manganese_subshell_occupancy2
    }
}

local manganese = Element:new{
    name = "Manganese",
    symbol = "Mn",
    number = 25,
    mass = 54.938,
    group = 7,
    period = 4,
    block = "d",
    oxidation_states = {2, 3, 4, 7},
    electron_configuration = manganese_electron_configuration
}

local iron_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 6
}

local iron_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local iron_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        iron_subshell_occupancy1,
        iron_subshell_occupancy2
    }
}

local iron = Element:new{
    name = "Iron",
    symbol = "Fe",
    number = 26,
    mass = 55.845,
    group = 8,
    period = 4,
    block = "d",
    oxidation_states = {2, 3},
    electron_configuration = iron_electron_configuration
}

local cobalt_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 7
}

local cobalt_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local cobalt_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        cobalt_subshell_occupancy1,
        cobalt_subshell_occupancy2
    }
}

local cobalt = Element:new{
    name = "Cobalt",
    symbol = "Co",
    number = 27,
    mass = 58.933,
    group = 9,
    period = 4,
    block = "d",
    oxidation_states = {2, 3},
    electron_configuration = cobalt_electron_configuration
}

local nickel_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 8
}

local nickel_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local nickel_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        nickel_subshell_occupancy1,
        nickel_subshell_occupancy2
    }
}

local nickel = Element:new{
    name = "Nickel",
    symbol = "Ni",
    number = 28,
    mass = 58.693,
    group = 10,
    period = 4,
    block = "d",
    oxidation_states = {2, 3},
    electron_configuration = nickel_electron_configuration
}

local copper_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 10
}

local copper_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 1
}

local copper_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        copper_subshell_occupancy1,
        copper_subshell_occupancy2
    }
}

local copper = Element:new{
    name = "Copper",
    symbol = "Cu",
    number = 29,
    mass = 63.546,
    group = 11,
    period = 4,
    block = "d",
    oxidation_states = {1, 2},
    electron_configuration = copper_electron_configuration
}

local yttrium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 1
}

local yttrium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local yttrium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        yttrium_subshell_occupancy1,
        yttrium_subshell_occupancy2,
    }
}

local yttrium = Element:new{
    name = "Yttrium",
    symbol = "Y",
    number = 39,
    mass = 88.906,
    group = 3,
    period = 5,
    block = "d",
    oxidation_states = {3},
    electron_configuration = yttrium_electron_configuration
}

local zirconium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 2
}

local zirconium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local zirconium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        zirconium_subshell_occupancy1,
        zirconium_subshell_occupancy2,
    }
}

local zirconium = Element:new{
    name = "Zirconium",
    symbol = "Zr",
    number = 40,
    mass = 91.224,
    group = 4,
    period = 5,
    block = "d",
    oxidation_states = {4},
    electron_configuration = zirconium_electron_configuration
}

local niobium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 4
}

local niobium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 1
}

local niobium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        niobium_subshell_occupancy1,
        niobium_subshell_occupancy2,
    }
}

local niobium = Element:new{
    name = "Niobium",
    symbol = "Nb",
    number = 41,
    mass = 92.906,
    group = 5,
    period = 5,
    block = "d",
    oxidation_states = {3, 5},
    electron_configuration = niobium_electron_configuration
}

local molybdenum_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 5
}

local molybdenum_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 1
}

local molybdenum_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        molybdenum_subshell_occupancy1,
        molybdenum_subshell_occupancy2,
    }
}

local molybdenum = Element:new{
    name = "Molybdenum",
    symbol = "Mo",
    number = 42,
    mass = 95.95,
    group = 6,
    period = 5,
    block = "d",
    oxidation_states = {6},
    electron_configuration = molybdenum_electron_configuration
}

local technetium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 5
}

local technetium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 2
}

local technetium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        technetium_subshell_occupancy1,
        technetium_subshell_occupancy2,
    }
}

local technetium = Element:new{
    name = "Technetium",
    symbol = "Tc",
    number = 43,
    mass = 98.907,
    group = 7,
    period = 5,
    block = "d",
    oxidation_states = {4, 6, 7},
    electron_configuration = technetium_electron_configuration
}

local ruthenium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 7
}

local ruthenium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 1
}

local ruthenium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        ruthenium_subshell_occupancy1,
        ruthenium_subshell_occupancy2,
    }
}

local ruthenium = Element:new{
    name = "Ruthenium",
    symbol = "Ru",
    number = 44,
    mass = 101.07,
    group = 8,
    period = 5,
    block = "d",
    oxidation_states = {3},
    electron_configuration = ruthenium_electron_configuration
}

local rhodium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 8
}

local rhodium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 1
}

local rhodium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        rhodium_subshell_occupancy1,
        rhodium_subshell_occupancy2,
    }
}

local rhodium = Element:new{
    name = "Rhodium",
    symbol = "Rh",
    number = 45,
    mass = 102.906,
    group = 9,
    period = 5,
    block = "d",
    oxidation_states = {3},
    electron_configuration = rhodium_electron_configuration
}

local palladium_subshell_occupancy = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local palladium_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = { palladium_subshell_occupancy }
}

local palladium = Element:new{
    name = "Palladium",
    symbol = "Pd",
    number = 46,
    mass = 106.42,
    group = 10,
    period = 5,
    block = "d",
    oxidation_states = {2, 3},
    electron_configuration = palladium_electron_configuration
}

local silver_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local silver_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "s",
    electron_count = 1
}

local silver_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        silver_subshell_occupancy1,
        silver_subshell_occupancy2,
    }
}

local silver = Element:new{
    name = "Silver",
    symbol = "Ag",
    number = 47,
    mass = 107.868,
    group = 11,
    period = 5,
    block = "d",
    oxidation_states = {1},
    electron_configuration = silver_electron_configuration
}

local hafnium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local hafnium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 2
}

local hafnium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local hafnium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        hafnium_subshell_occupancy1,
        hafnium_subshell_occupancy2,
        hafnium_subshell_occupancy3
    }
}

local hafnium = Element:new{
    name = "Hafnium",
    symbol = "Hf",
    number = 72,
    mass = 178.49,
    group = 4,
    period = 6,
    block = "d",
    oxidation_states = {4},
    electron_configuration = hafnium_electron_configuration
}

local tantalum_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local tantalum_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 3
}

local tantalum_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local tantalum_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        tantalum_subshell_occupancy1,
        tantalum_subshell_occupancy2,
        tantalum_subshell_occupancy3
    }
}

local tantalum = Element:new{
    name = "Tantalum",
    symbol = "Ta",
    number = 73,
    mass = 180.948,
    group = 5,
    period = 6,
    block = "d",
    oxidation_states = {5},
    electron_configuration = tantalum_electron_configuration
}

local tungsten_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local tungsten_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 4
}

local tungsten_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local tungsten_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        tungsten_subshell_occupancy1,
        tungsten_subshell_occupancy2,
        tungsten_subshell_occupancy3
    }
}

local tungsten = Element:new{
    name = "Tungsten",
    symbol = "W",
    number = 74,
    mass = 183.84,
    group = 6,
    period = 6,
    block = "d",
    oxidation_states = {6},
    electron_configuration = tungsten_electron_configuration
}

local rhenium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local rhenium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 5
}

local rhenium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local rhenium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        rhenium_subshell_occupancy1,
        rhenium_subshell_occupancy2,
        rhenium_subshell_occupancy3
    }
}

local rhenium = Element:new{
    name = "Rhenium",
    symbol = "Re",
    number = 75,
    mass = 186.207,
    group = 7,
    period = 6,
    block = "d",
    oxidation_states = {4, 6, 7},
    electron_configuration = rhenium_electron_configuration
}

local osmium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local osmium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 6
}

local osmium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local osmium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        osmium_subshell_occupancy1,
        osmium_subshell_occupancy2,
        osmium_subshell_occupancy3
    }
}

local osmium = Element:new{
    name = "Osmium",
    symbol = "Os",
    number = 76,
    mass = 190.23,
    group = 8,
    period = 6,
    block = "d",
    oxidation_states = {3, 4},
    electron_configuration = osmium_electron_configuration
}

local iridium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local iridium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 7
}

local iridium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 2
}

local iridium_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        iridium_subshell_occupancy1,
        iridium_subshell_occupancy2,
        iridium_subshell_occupancy3
    }
}

local iridium = Element:new{
    name = "Iridium",
    symbol = "Ir",
    number = 77,
    mass = 192.217,
    group = 9,
    period = 6,
    block = "d",
    oxidation_states = {3, 4},
    electron_configuration = iridium_electron_configuration
}

local platinum_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local platinum_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 9
}

local platinum_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 1
}

local platinum_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        platinum_subshell_occupancy1,
        platinum_subshell_occupancy2,
        platinum_subshell_occupancy3
    }
}

local platinum = Element:new{
    name = "Platinum",
    symbol = "Pt",
    number = 78,
    mass = 195.085,
    group = 10,
    period = 6,
    block = "d",
    oxidation_states = {2, 4},
    electron_configuration = platinum_electron_configuration
}

local gold_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "f",
    electron_count = 14
}

local gold_subshell_occupancy2 = SubshellOccupancy:new{
    n = 5,
    l = "d",
    electron_count = 10
}

local gold_subshell_occupancy3 = SubshellOccupancy:new{
    n = 6,
    l = "s",
    electron_count = 1
}

local gold_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        gold_subshell_occupancy1,
        gold_subshell_occupancy2,
        gold_subshell_occupancy3
    }
}

local gold = Element:new{
    name = "Gold",
    symbol = "Au",
    number = 79,
    mass = 196.967,
    group = 11,
    period = 6,
    block = "d",
    oxidation_states = {1, 3},
    electron_configuration = gold_electron_configuration
}

local rutherfordium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local rutherfordium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 2
}

local rutherfordium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local rutherfordium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        rutherfordium_subshell_occupancy1,
        rutherfordium_subshell_occupancy2,
        rutherfordium_subshell_occupancy3
    }
}

local rutherfordium = Element:new{
    name = "Rutherfordium",
    symbol = "Rf",
    number = 104,
    mass = 267.122,
    group = 4,
    period = 7,
    block = "d",
    oxidation_states = {4},
    electron_configuration = rutherfordium_electron_configuration
}

local dubnium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local dubnium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 3
}

local dubnium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local dubnium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        dubnium_subshell_occupancy1,
        dubnium_subshell_occupancy2,
        dubnium_subshell_occupancy3
    }
}

local dubnium = Element:new{
    name = "Dubnium",
    symbol = "Db",
    number = 105,
    mass = 268.126,
    group = 5,
    period = 7,
    block = "d",
    oxidation_states = {3, 4, 5},
    electron_configuration = dubnium_electron_configuration
}

local seaborgium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local seaborgium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 4
}

local seaborgium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local seaborgium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        seaborgium_subshell_occupancy1,
        seaborgium_subshell_occupancy2,
        seaborgium_subshell_occupancy3
    }
}

local seaborgium = Element:new{
    name = "Seaborgium",
    symbol = "Sg",
    number = 106,
    mass = 269.128,
    group = 6,
    period = 7,
    block = "d",
    oxidation_states = {0, 3, 4, 5, 6},
    electron_configuration = seaborgium_electron_configuration
}

local bohrium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local bohrium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 5
}

local bohrium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local bohrium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        bohrium_subshell_occupancy1,
        bohrium_subshell_occupancy2,
        bohrium_subshell_occupancy3
    }
}

local bohrium = Element:new{
    name = "Bohrium",
    symbol = "Bh",
    number = 107,
    mass = 270.133,
    group = 7,
    period = 7,
    block = "d",
    oxidation_states = {3, 4, 5, 7},
    electron_configuration = bohrium_electron_configuration
}

local hassium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local hassium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 6
}

local hassium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local hassium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        hassium_subshell_occupancy1,
        hassium_subshell_occupancy2,
        hassium_subshell_occupancy3
    }
}

local hassium = Element:new{
    name = "Hassium",
    symbol = "Hs",
    number = 108,
    mass = 269.1336,
    group = 8,
    period = 7,
    block = "d",
    oxidation_states = {2, 3, 4, 5, 6, 8},
    electron_configuration = hassium_electron_configuration
}

local meitnerium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local meitnerium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 7
}

local meitnerium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local meitnerium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        meitnerium_subshell_occupancy1,
        meitnerium_subshell_occupancy2,
        meitnerium_subshell_occupancy3
    }
}

local meitnerium = Element:new{
    name = "Meitnerium",
    symbol = "Mt",
    number = 109,
    mass = 277.154,
    group = 9,
    period = 7,
    block = "d",
    oxidation_states = {1, 3, 4, 6, 8, 9},
    electron_configuration = meitnerium_electron_configuration
}

local darmstadtium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local darmstadtium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 8
}

local darmstadtium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local darmstadtium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        darmstadtium_subshell_occupancy1,
        darmstadtium_subshell_occupancy2,
        darmstadtium_subshell_occupancy3
    }
}

local darmstadtium = Element:new{
    name = "Darmstadtium",
    symbol = "Ds",
    number = 110,
    mass = 282.166,
    group = 10,
    period = 7,
    block = "d",
    oxidation_states = {0, 2, 4, 6, 8},
    electron_configuration = darmstadtium_electron_configuration
}

local roentgenium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 5,
    l = "f",
    electron_count = 14
}

local roentgenium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 6,
    l = "d",
    electron_count = 9
}

local roentgenium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 7,
    l = "s",
    electron_count = 2
}

local roentgenium_electron_configuration = ElectronConfiguration:new{
    core = "Rn",
    subshell_occupancy = {
        roentgenium_subshell_occupancy1,
        roentgenium_subshell_occupancy2,
        roentgenium_subshell_occupancy3
    }
}

local roentgenium = Element:new{
    name = "Roentgenium",
    symbol = "Rg",
    number = 111,
    mass = 282.169,
    group = 11,
    period = 7,
    block = "d",
    oxidation_states = {-1, 1, 3, 5},
    electron_configuration = roentgenium_electron_configuration
}

local transition_metals = ElementArray:new{
    scandium, titanium, vanadium, chromium, manganese, iron, cobalt, nickel,
    copper, yttrium, zirconium, niobium, molybdenum, technetium,ruthenium,
    rhodium, palladium, silver, hafnium, tantalum, tungsten, rhenium, osmium,
    iridium, platinum, gold, rutherfordium, dubnium, seaborgium, bohrium,
    hassium, meitnerium, darmstadtium, roentgenium
}

return transition_metals
