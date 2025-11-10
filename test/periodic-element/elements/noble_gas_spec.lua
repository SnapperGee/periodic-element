local noble_gas = require("periodic-element.elements.noble_gas")
local OxidationStates = require("periodic-element.element.oxidation_states")
local test_elements = require("test.periodic-element.elements.test_elements")

local helium_properties = {
    {"name", "Helium"},
    {"symbol", "He"},
    {"number", 2},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 4.0026},
    {"group", 18},
    {"family", "Noble Gas"},
    {"period", 1},
    {"block", 's'},
    {"electronegativity", nil},
    {"atomic_radius", 140},
    {"ionization_energy", 24.587},
    {"electron_affinity", nil},
    {"melting_point", 0.95},
    {"boiling_point", 4.22},
    {"density", 0.0001785},
    {"standard_state", "Gas"},
}

local neon_properties = {
    {"name", "Neon"},
    {"symbol", "Ne"},
    {"number", 10},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 20.18},
    {"group", 18},
    {"family", "Noble Gas"},
    {"period", 2},
    {"block", 'p'},
    {"electronegativity", nil},
    {"atomic_radius", 154},
    {"ionization_energy", 21.565},
    {"electron_affinity", nil},
    {"melting_point", 24.56},
    {"boiling_point", 27.07},
    {"density", 0.0008999},
    {"standard_state", "Gas"},
}

local argon_properties = {
    {"name", "Argon"},
    {"symbol", "Ar"},
    {"number", 18},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 39.948},
    {"group", 18},
    {"family", "Noble Gas"},
    {"period", 3},
    {"block", 'p'},
    {"electronegativity", nil},
    {"atomic_radius", 188},
    {"ionization_energy", 15.76},
    {"electron_affinity", nil},
    {"melting_point", 83.8},
    {"boiling_point", 87.3},
    {"density", 0.0017837},
    {"standard_state", "Gas"},
}

local krypton_properties = {
    {"name", "Krypton"},
    {"symbol", "Kr"},
    {"number", 36},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 83.798},
    {"group", 18},
    {"family", "Noble Gas"},
    {"period", 4},
    {"block", 'p'},
    {"electronegativity", 3},
    {"atomic_radius", 202},
    {"ionization_energy", 14},
    {"electron_affinity", nil},
    {"melting_point", 115.79},
    {"boiling_point", 119.93},
    {"density", 0.003733},
    {"standard_state", "Gas"},
}

local xenon_properties = {
    {"name", "Xenon"},
    {"symbol", "Xe"},
    {"number", 54},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 131.293},
    {"group", 18},
    {"family", "Noble Gas"},
    {"period", 5},
    {"block", 'p'},
    {"electronegativity", 2.6},
    {"atomic_radius", 216},
    {"ionization_energy", 12.13},
    {"electron_affinity", nil},
    {"melting_point", 161.36},
    {"boiling_point", 165.03},
    {"density", 0.005887},
    {"standard_state", "Gas"},
}

local radon_properties = {
    {"name", "Radon"},
    {"symbol", "Rn"},
    {"number", 86},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 222.01758},
    {"group", 18},
    {"family", "Noble Gas"},
    {"period", 6},
    {"block", 'p'},
    {"electronegativity", nil},
    {"atomic_radius", 220},
    {"ionization_energy", 10.745},
    {"electron_affinity", nil},
    {"melting_point", 202},
    {"boiling_point", 211.45},
    {"density", 0.00973},
    {"standard_state", "Gas"},
}

local oganesson_properties = {
    {"name", "Oganesson"},
    {"symbol", "Og"},
    {"number", 118},
    {"oxidation_states", OxidationStates.new{-1, 0, 1, 2, 4, 6}},
    {"mass", 295.216},
    {"group", 18},
    {"family", "Noble Gas"},
    {"period", 7},
    {"block", 'p'},
    {"electronegativity", nil},
    {"atomic_radius", nil},
    {"ionization_energy", nil},
    {"electron_affinity", nil},
    {"melting_point", nil},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "Gas"},
}

describe("noble_gases", function ()
    test("noble_gases:length() should return 7", function ()
        local noble_gases_length = noble_gas:length()
        local message = "Expected noble_gases:length() didn't return 7"
        assert.are.equal(7, noble_gases_length, message)
    end)

    describe("helium", function()
        test("noble_gases.helium equals non nil", function ()
            local helium = noble_gas.helium
            local message = "noble_gases.helium equals nil"
            assert.is_not_nil(helium, message)
        end)

        test("noble_gases.helium equals noble_gases[2]", function ()
            local helium = noble_gas.helium
            local helium_via_index = noble_gas[2]
            local message = "noble_gases.helium doesn't equal noble_gases[2]"
            assert.are.equal(helium, helium_via_index, message)
        end)

        test('noble_gases.helium equals noble_gases["helium"]', function ()
            local helium = noble_gas.helium
            local helium_via_name = noble_gas["helium"]
            local message = 'noble_gases.helium doesn\'t equal noble_gases["helium"]'
            assert.are.equal(helium, helium_via_name, message)
        end)

        test('noble_gases.helium equals noble_gases["he"]', function ()
            local helium = noble_gas.helium
            local helium_via_symbol = noble_gas["he"]
            local message = 'noble_gases.helium doesn\'t equal noble_gases["he"]'
            assert.are.equal(helium, helium_via_symbol, message)
        end)

        test_elements(noble_gas.helium, noble_gas, helium_properties, assert, test)
    end)

    describe("neon", function()
        test("noble_gases.neon equals non nil", function ()
            local neon = noble_gas.neon
            local message = "noble_gases.neon equals nil"
            assert.is_not_nil(neon, message)
        end)

        test("noble_gases.neon equals noble_gases[10]", function ()
            local neon = noble_gas.neon
            local neon_via_index = noble_gas[10]
            local message = "noble_gases.neon doesn't equal noble_gases[10]"
            assert.are.equal(neon, neon_via_index, message)
        end)

        test('noble_gases.neon equals noble_gases["neon"]', function ()
            local neon = noble_gas.neon
            local neon_via_name = noble_gas["neon"]
            local message = 'noble_gases.neon doesn\'t equal noble_gases["neon"]'
            assert.are.equal(neon, neon_via_name, message)
        end)

        test('noble_gases.neon equals noble_gases["ne"]', function ()
            local neon = noble_gas.neon
            local neon_via_symbol = noble_gas["ne"]
            local message = 'noble_gases.neon doesn\'t equal noble_gases["ne"]'
            assert.are.equal(neon, neon_via_symbol, message)
        end)

        test_elements(noble_gas.neon, noble_gas, neon_properties, assert, test)
    end)

    describe("argon", function()
        test("noble_gases.argon equals non nil", function ()
            local argon = noble_gas.argon
            local message = "noble_gases.argon equals nil"
            assert.is_not_nil(argon, message)
        end)

        test("noble_gases.argon equals noble_gases[18]", function ()
            local argon = noble_gas.argon
            local argon_via_index = noble_gas[18]
            local message = "noble_gases.argon doesn't equal noble_gases[18]"
            assert.are.equal(argon, argon_via_index, message)
        end)

        test('noble_gases.argon equals noble_gases["argon"]', function ()
            local argon = noble_gas.argon
            local argon_via_name = noble_gas["argon"]
            local message = 'noble_gases.argon doesn\'t equal noble_gases["argon"]'
            assert.are.equal(argon, argon_via_name, message)
        end)

        test('noble_gases.argon equals noble_gases["ar"]', function ()
            local argon = noble_gas.argon
            local argon_via_symbol = noble_gas["ar"]
            local message = 'noble_gases.argon doesn\'t equal noble_gases["ar"]'
            assert.are.equal(argon, argon_via_symbol, message)
        end)

        test_elements(noble_gas.argon, noble_gas, argon_properties, assert, test)
    end)

    describe("krypton", function()
        test("noble_gases.krypton equals non nil", function ()
            local krypton = noble_gas.krypton
            local message = "noble_gases.krypton equals nil"
            assert.is_not_nil(krypton, message)
        end)

        test("noble_gases.krypton equals noble_gases[36]", function ()
            local krypton = noble_gas.krypton
            local krypton_via_index = noble_gas[36]
            local message = "noble_gases.krypton doesn't equal noble_gases[36]"
            assert.are.equal(krypton, krypton_via_index, message)
        end)

        test('noble_gases.krypton equals noble_gases["krypton"]', function ()
            local krypton = noble_gas.krypton
            local krypton_via_name = noble_gas["krypton"]
            local message = 'noble_gases.krypton doesn\'t equal noble_gases["krypton"]'
            assert.are.equal(krypton, krypton_via_name, message)
        end)

        test('noble_gases.krypton equals noble_gases["Kr"]', function ()
            local krypton = noble_gas.krypton
            local krypton_via_symbol = noble_gas["Kr"]
            local message = 'noble_gases.krypton doesn\'t equal noble_gases["Kr"]'
            assert.are.equal(krypton, krypton_via_symbol, message)
        end)

        test_elements(noble_gas.krypton, noble_gas, krypton_properties, assert, test)
    end)

    describe("xenon", function()
        test("noble_gases.xenon equals non nil", function ()
            local xenon = noble_gas.xenon
            local message = "noble_gases.xenon equals nil"
            assert.is_not_nil(xenon, message)
        end)

        test("noble_gases.xenon equals noble_gases[54]", function ()
            local xenon = noble_gas.xenon
            local xenon_via_index = noble_gas[54]
            local message = "noble_gases.xenon doesn't equal noble_gases[54]"
            assert.are.equal(xenon, xenon_via_index, message)
        end)

        test('noble_gases.xenon equals noble_gases["xenon"]', function ()
            local xenon = noble_gas.xenon
            local xenon_via_name = noble_gas["xenon"]
            local message = 'noble_gases.xenon doesn\'t equal noble_gases["xenon"]'
            assert.are.equal(xenon, xenon_via_name, message)
        end)

        test('noble_gases.xenon equals noble_gases["xe"]', function ()
            local xenon = noble_gas.xenon
            local xenon_via_symbol = noble_gas["xe"]
            local message = 'noble_gases.xenon doesn\'t equal noble_gases["xe"]'
            assert.are.equal(xenon, xenon_via_symbol, message)
        end)

        test_elements(noble_gas.xenon, noble_gas, xenon_properties, assert, test)
    end)

    describe("radon", function()
        test("noble_gases.radon equals non nil", function ()
            local radon = noble_gas.radon
            local message = "noble_gases.radon equals nil"
            assert.is_not_nil(radon, message)
        end)

        test("noble_gases.radon equals noble_gases[86]", function ()
            local radon = noble_gas.radon
            local radon_via_index = noble_gas[86]
            local message = "noble_gases.radon doesn't equal noble_gases[86]"
            assert.are.equal(radon, radon_via_index, message)
        end)

        test('noble_gases.radon equals noble_gases["radon"]', function ()
            local radon = noble_gas.radon
            local radon_via_name = noble_gas["radon"]
            local message = 'noble_gases.radon doesn\'t equal noble_gases["radon"]'
            assert.are.equal(radon, radon_via_name, message)
        end)

        test_elements(noble_gas.radon, noble_gas, radon_properties, assert, test)
    end)

    describe("oganesson", function()
        test("noble_gases.oganesson equals non nil", function ()
            local oganesson = noble_gas.oganesson
            local message = "noble_gases.oganesson equals nil"
            assert.is_not_nil(oganesson, message)
        end)

        test("noble_gases.oganesson equals noble_gases[118]", function ()
            local oganesson = noble_gas.oganesson
            local oganesson_via_index = noble_gas[118]
            local message = "noble_gases.oganesson doesn't equal noble_gases[118]"
            assert.are.equal(oganesson, oganesson_via_index, message)
        end)

        test('noble_gases.oganesson equals noble_gases["oganesson"]', function ()
            local oganesson = noble_gas.oganesson
            local oganesson_via_name = noble_gas["oganesson"]
            local message = 'noble_gases.oganesson doesn\'t equal noble_gases["oganesson"]'
            assert.are.equal(oganesson, oganesson_via_name, message)
        end)

        test_elements(noble_gas.oganesson, noble_gas, oganesson_properties, assert, test)
    end)
end)
