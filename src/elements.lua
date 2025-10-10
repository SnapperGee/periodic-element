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
    electron_configuration = cesium_electron_configuration
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
    block = "s",
    electron_configuration = barium_electron_configuration
}

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
    mass = 137.905,
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
    electron_configuration = gold_electron_configuration
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

local astatine_electron_configuration = ElectronConfiguration:new{
    core = "Xe",
    subshell_occupancy = {
        astatine_subshell_occupancy1,
        astatine_subshell_occupancy2,
        astatine_subshell_occupancy3,
        astatine_subshell_occupancy4
    }
}

local astatine = Element:new{
    name = "Astatine",
    symbol = "At",
    number = 85,
    mass = 209.987,
    group = 17,
    period = 6,
    block = "p",
    electron_configuration = astatine_electron_configuration
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
    block = "p",
    electron_configuration = radon_electron_configuration
}
