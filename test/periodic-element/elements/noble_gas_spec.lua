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

    -- describe("francium", function()
    --     test("noble_gases.francium equals non nil", function ()
    --         local francium = noble_gas.francium
    --         local message = "noble_gases.francium equals nil"
    --         assert.is_not_nil(francium, message)
    --     end)

    --     test("noble_gases.francium equals noble_gases[87]", function ()
    --         local francium = noble_gas.francium
    --         local francium_via_index = noble_gas[87]
    --         local message = "noble_gases.francium doesn't equal noble_gases[87]"
    --         assert.are.equal(francium, francium_via_index, message)
    --     end)

    --     test('noble_gases.francium equals noble_gases["francium"]', function ()
    --         local francium = noble_gas.francium
    --         local francium_via_name = noble_gas["francium"]
    --         local message = 'noble_gases.francium doesn\'t equal noble_gases["francium"]'
    --         assert.are.equal(francium, francium_via_name, message)
    --     end)

    --     test('noble_gases.francium equals noble_gases["fr"]', function ()
    --         local francium = noble_gas.francium
    --         local francium_via_symbol = noble_gas["fr"]
    --         local message = 'noble_gases.francium doesn\'t equal noble_gases["fr"]'
    --         assert.are.equal(francium, francium_via_symbol, message)
    --     end)

    --     test('noble_gases.francium.name equals "Francium"', function ()
    --         local francium_name = noble_gas.francium.name
    --         local message = 'noble_gases.francium.name doesn\'t "Francium"'
    --         assert.are.equal("Francium", francium_name, message)
    --     end)

    --     test('noble_gases.francium.symbol equals "Fr"', function ()
    --         local francium_symbol = noble_gas.francium.symbol
    --         local message = 'noble_gases.francium.symbol doesn\'t "Fr"'
    --         assert.are.equal("Fr", francium_symbol, message)
    --     end)

    --     test("noble_gases.francium.number equals 87", function ()
    --         local francium_number = noble_gas.francium.number
    --         local message = "noble_gases.francium.number doesn\'t 87"
    --         assert.are.equal(87, francium_number, message)
    --     end)

    --     test("noble_gases.francium.oxidation_states equals {0}", function ()
    --         local francium_oxidation_states = noble_gas.francium.oxidation_states
    --         local expected_oxidation_sates = OxidationStates.new{0}
    --         local message = "noble_gases.francium.oxidation_states doesn\'t {0}"
    --         assert.are.same(expected_oxidation_sates, francium_oxidation_states, message)
    --     end)

    --     test("noble_gases.francium.mass equals 223.01973", function ()
    --         local francium_mass = noble_gas.francium.mass
    --         local message = "noble_gases.francium.mass doesn\'t equal 223.01973"
    --         assert.are.equal(223.01973, francium_mass, message)
    --     end)

    --     test("noble_gases.francium.group equals 1", function ()
    --         local francium_group = noble_gas.francium.group
    --         local message = "noble_gases.francium.group doesn\'t equal 1"
    --         assert.are.equal(1, francium_group, message)
    --     end)

    --     test('noble_gases.francium.family equals "Noble Gas"', function ()
    --         local francium_family = noble_gas.francium.family
    --         local message = 'noble_gases.francium.family doesn\'t "Noble Gas"'
    --         assert.are.equal("Noble Gas", francium_family, message)
    --     end)

    --     test("noble_gases.francium.period equals 7", function ()
    --         local francium_period = noble_gas.francium.period
    --         local message = "noble_gases.francium.period doesn\'t 7"
    --         assert.are.equal(7, francium_period, message)
    --     end)

    --     test("noble_gases.francium.block equals 'p'", function ()
    --         local francium_block = noble_gas.francium.block
    --         local message = "noble_gases.francium.block doesn\'t 'p'"
    --         assert.are.equal('p', francium_block, message)
    --     end)

    --     test("noble_gases.francium.electronegativity is nil", function ()
    --         local francium_electronegativity = noble_gas.francium.electronegativity
    --         local message = "noble_gases.francium.electronegativity isn\'t nil"
    --         assert.are.equal(0.7, francium_electronegativity, message)
    --     end)

    --     test("noble_gases.francium.atomic_radius equals 348", function ()
    --         local francium_atomic_radius = noble_gas.francium.atomic_radius
    --         local message = "noble_gases.francium.atomic_radius does not equal 348"
    --         assert.are.equal(348, francium_atomic_radius, message)
    --     end)

    --     test("noble_gases.francium.ionization_energy equals 3.9", function ()
    --         local francium_ionization_energy = noble_gas.francium.ionization_energy
    --         local message = "noble_gases.francium.ionization_energy doesn\'t equal 3.9"
    --         assert.are.equal(3.9, francium_ionization_energy, message)
    --     end)

    --     test("noble_gases.francium.electron_affinity is nil", function ()
    --         local francium_electron_affinity = noble_gas.francium.electron_affinity
    --         local message = "noble_gases.francium.electron_affinity isn\'t nil"
    --         assert.are.equal(0.47, francium_electron_affinity, message)
    --     end)

    --     test("noble_gases.francium.melting_point equals 300", function ()
    --         local francium_melting_point = noble_gas.francium.melting_point
    --         local message = "noble_gases.francium.melting_point doesn\'t equal 300"
    --         assert.are.equal(300, francium_melting_point, message)
    --     end)

    --     test("noble_gases.francium.boiling_point is nil", function ()
    --         local francium_boiling_point = noble_gas.francium.boiling_point
    --         local message = "noble_gases.francium.boiling_point isn't nil"
    --         assert.is_nil(francium_boiling_point, message)
    --     end)

    --     test("noble_gases.francium.density is nil", function ()
    --         local francium_density = noble_gas.francium.density
    --         local message = "noble_gases.francium.density isn't nil"
    --         assert.is_nil(francium_density, message)
    --     end)

    --     test('noble_gases.francium.standard_state equals "Gas"', function ()
    --         local francium_standard_state = noble_gas.francium.standard_state
    --         local message = 'noble_gases.francium.standard_state doesn\'t "Gas"'
    --         assert.are.equal("Gas", francium_standard_state, message)
    --     end)
    -- end)
end)
