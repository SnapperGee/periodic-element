local Element = require("src.element")
local ElectronConfiguration = require("src.electron_configuration")
local SubshellOccupancy = require("src.subshell_occupancy")

local hydrogen_subshell_occupancy = SubshellOccupancy:new{
    n = 1,
    l = "s",
    electron_count = 1
}

local hydrogen_electron_configuration = ElectronConfiguration:new{
    subshell_occupancy = { hydrogen_subshell_occupancy }
}

local hydrogen = Element:new{
    name = "Hydrogen",
    symbol = "H",
    number = 1,
    mass = 1.008,
    group = 1,
    period = 1,
    block = "s",
    electron_configuration = hydrogen_electron_configuration
}

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
    block = "s",
    electron_configuration = helium_electron_configuration
}

local lithium_subshell_occupancy = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 1
}

local lithium_electron_configuration = ElectronConfiguration:new{
    core = "he",
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
    electron_configuration = lithium_electron_configuration
}

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
    block = "s",
    electron_configuration = beryllium_electron_configuration
}

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
    electron_configuration = boron_electron_configuration
}

local carbon_subshell_occupancy1 = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local carbon_subshell_occupancy2 = SubshellOccupancy:new{
    n = 2,
    l = "p",
    electron_count = 2
}

local carbon_electron_configuration = ElectronConfiguration:new{
    core = "He",
    subshell_occupancy = {
        carbon_subshell_occupancy1,
        carbon_subshell_occupancy2
    }
}

local carbon = Element:new{
    name = "Carbon",
    symbol = "C",
    number = 6,
    mass = 12.011,
    group = 14,
    period = 2,
    block = "p",
    electron_configuration = carbon_electron_configuration
}

local nitrogen_subshell_occupancy1 = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local nitrogen_subshell_occupancy2 = SubshellOccupancy:new{
    n = 2,
    l = "p",
    electron_count = 3
}

local nitrogen_electron_configuration = ElectronConfiguration:new{
    core = "He",
    subshell_occupancy = {
        nitrogen_subshell_occupancy1,
        nitrogen_subshell_occupancy2
    }
}

local nitrogen = Element:new{
    name = "Nitrogen",
    symbol = "N",
    number = 7,
    mass = 14.007,
    group = 15,
    period = 2,
    block = "p",
    electron_configuration = nitrogen_electron_configuration
}

local oxygen_subshell_occupancy1 = SubshellOccupancy:new{
    n = 2,
    l = "s",
    electron_count = 2
}

local oxygen_subshell_occupancy2 = SubshellOccupancy:new{
    n = 2,
    l = "p",
    electron_count = 4
}

local oxygen_electron_configuration = ElectronConfiguration:new{
    core = "He",
    subshell_occupancy = {
        oxygen_subshell_occupancy1,
        oxygen_subshell_occupancy2
    }
}

local oxygen = Element:new{
    name = "Oxygen",
    symbol = "O",
    number = 8,
    mass = 15.999,
    group = 16,
    period = 2,
    block = "p",
    electron_configuration = oxygen_electron_configuration
}

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

local fluorine_electron_configuration = ElectronConfiguration:new{
    core = "He",
    subshell_occupancy = {
        fluorine_subshell_occupancy1,
        fluorine_subshell_occupancy2
    }
}

local fluorine = Element:new{
    name = "Fluorine",
    symbol = "F",
    number = 9,
    mass = 18.998,
    group = 17,
    period = 2,
    block = "p",
    electron_configuration = fluorine_electron_configuration
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
    block = "p",
    electron_configuration = neon_electron_configuration
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
    electron_configuration = sodium_electron_configuration
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
    block = "s",
    electron_configuration = magnesium_electron_configuration
}

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
    electron_configuration = silicon_electron_configuration
}

local phosphorus_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "s",
    electron_count = 2
}

local phosphorus_subshell_occupancy2 = SubshellOccupancy:new{
    n = 3,
    l = "p",
    electron_count = 3
}

local phosphorus_electron_configuration = ElectronConfiguration:new{
    core = "Ne",
    subshell_occupancy = {
        phosphorus_subshell_occupancy1,
        phosphorus_subshell_occupancy2
    }
}

local phosphorus = Element:new{
    name = "Phosphorus",
    symbol = "P",
    number = 15,
    mass = 30.974,
    group = 15,
    period = 3,
    block = "p",
    electron_configuration = phosphorus_electron_configuration
}

local sulfur_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "s",
    electron_count = 2
}

local sulfur_subshell_occupancy2 = SubshellOccupancy:new{
    n = 3,
    l = "p",
    electron_count = 4
}

local sulfur_electron_configuration = ElectronConfiguration:new{
    core = "Ne",
    subshell_occupancy = {
        sulfur_subshell_occupancy1,
        sulfur_subshell_occupancy2
    }
}

local sulfur = Element:new{
    name = "Sulfur",
    symbol = "S",
    number = 16,
    mass = 32.066,
    group = 16,
    period = 3,
    block = "p",
    electron_configuration = sulfur_electron_configuration
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

local chlorine_electron_configuration = ElectronConfiguration:new{
    core = "Ne",
    subshell_occupancy = {
        chlorine_subshell_occupancy1,
        chlorine_subshell_occupancy2
    }
}

local chlorine = Element:new{
    name = "Chlorine",
    symbol = "Cl",
    number = 17,
    mass = 35.453,
    group = 17,
    period = 3,
    block = "p",
    electron_configuration = chlorine_electron_configuration
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
    block = "p",
    electron_configuration = argon_electron_configuration
}

local potassium_subshell_occupancy = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 1
}

local potassium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = { potassium_subshell_occupancy1 }
}

local potassium = Element:new{
    name = "Potassium",
    symbol = "K",
    number = 19,
    mass = 39.098,
    group = 1,
    period = 4,
    block = "s",
    electron_configuration = potassium_electron_configuration
}

local calcium_subshell_occupancy = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local calcium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = { calcium_subshell_occupancy1 }
}

local calcium = Element:new{
    name = "Calcium",
    symbol = "Ca",
    number = 20,
    mass = 40.078,
    group = 2,
    period = 4,
    block = "s",
    electron_configuration = calcium_electron_configuration
}

local calcium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 1
}

local calcium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local calcium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        calcium_subshell_occupancy1,
        calcium_subshell_occupancy2
    }
}

local calcium = Element:new{
    name = "Scandium",
    symbol = "Sc",
    number = 21,
    mass = 44.956,
    group = 3,
    period = 4,
    block = "d",
    electron_configuration = calcium_electron_configuration
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
    electron_configuration = copper_electron_configuration
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
    mass = 63.38,
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
    electron_configuration = arsenic_electron_configuration
}

local selenium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 3,
    l = "d",
    electron_count = 10
}

local selenium_subshell_occupancy2 = SubshellOccupancy:new{
    n = 4,
    l = "s",
    electron_count = 2
}

local selenium_subshell_occupancy3 = SubshellOccupancy:new{
    n = 4,
    l = "p",
    electron_count = 4
}

local selenium_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        selenium_subshell_occupancy1,
        selenium_subshell_occupancy2,
        selenium_subshell_occupancy3
    }
}

local selenium = Element:new{
    name = "Selenium",
    symbol = "Se",
    number = 34,
    mass = 78.971,
    group = 16,
    period = 4,
    block = "p",
    electron_configuration = selenium_electron_configuration
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

local bromine_electron_configuration = ElectronConfiguration:new{
    core = "Ar",
    subshell_occupancy = {
        bromine_subshell_occupancy1,
        bromine_subshell_occupancy2,
        bromine_subshell_occupancy3
    }
}

local bromine = Element:new{
    name = "Bromine",
    symbol = "Br",
    number = 35,
    mass = 79.904,
    group = 17,
    period = 4,
    block = "p",
    electron_configuration = bromine_electron_configuration
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
    block = "p",
    electron_configuration = krypton_electron_configuration
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
    electron_configuration = rubidium_electron_configuration
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
    block = "s",
    electron_configuration = strontium_electron_configuration
}

local yttrium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 1
}

local yttrium_subshell_occupancy1 = SubshellOccupancy:new{
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
    electron_configuration = yttrium_electron_configuration
}

local zirconium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 2
}

local zirconium_subshell_occupancy1 = SubshellOccupancy:new{
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
    electron_configuration = zirconium_electron_configuration
}

local niobium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 4
}

local niobium_subshell_occupancy1 = SubshellOccupancy:new{
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
    electron_configuration = niobium_electron_configuration
}

local molybdenum_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 5
}

local molybdenum_subshell_occupancy1 = SubshellOccupancy:new{
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
    electron_configuration = molybdenum_electron_configuration
}

local technetium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 5
}

local technetium_subshell_occupancy1 = SubshellOccupancy:new{
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
    electron_configuration = technetium_electron_configuration
}

local ruthenium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 7
}

local ruthenium_subshell_occupancy1 = SubshellOccupancy:new{
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
    electron_configuration = ruthenium_electron_configuration
}

local rhodium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 8
}

local rhodium_subshell_occupancy1 = SubshellOccupancy:new{
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
    electron_configuration = palladium_electron_configuration
}

local silver_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local silver_subshell_occupancy1 = SubshellOccupancy:new{
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
    electron_configuration = silver_electron_configuration
}

local cadmium_subshell_occupancy1 = SubshellOccupancy:new{
    n = 4,
    l = "d",
    electron_count = 10
}

local cadmium_subshell_occupancy1 = SubshellOccupancy:new{
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
    electron_configuration = tellurium_electron_configuration
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

local iodine_electron_configuration = ElectronConfiguration:new{
    core = "Kr",
    subshell_occupancy = {
        iodine_subshell_occupancy1,
        iodine_subshell_occupancy2,
        iodine_subshell_occupancy3
    }
}

local iodine = Element:new{
    name = "Iodine",
    symbol = "I",
    number = 53,
    mass = 126.904,
    group = 17,
    period = 5,
    block = "p",
    electron_configuration = iodine_electron_configuration
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
    block = "p",
    electron_configuration = xenon_electron_configuration
}
