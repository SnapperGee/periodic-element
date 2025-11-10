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

    -- describe("rubidium", function()
    --     test("noble_gases.rubidium equals non nil", function ()
    --         local rubidium = noble_gas.rubidium
    --         local message = "noble_gases.rubidium equals nil"
    --         assert.is_not_nil(rubidium, message)
    --     end)

    --     test("noble_gases.rubidium equals noble_gases[37]", function ()
    --         local rubidium = noble_gas.rubidium
    --         local rubidium_via_index = noble_gas[37]
    --         local message = "noble_gases.rubidium doesn't equal noble_gases[37]"
    --         assert.are.equal(rubidium, rubidium_via_index, message)
    --     end)

    --     test('noble_gases.rubidium equals noble_gases["rubidium"]', function ()
    --         local rubidium = noble_gas.rubidium
    --         local rubidium_via_name = noble_gas["rubidium"]
    --         local message = 'noble_gases.rubidium doesn\'t equal noble_gases["rubidium"]'
    --         assert.are.equal(rubidium, rubidium_via_name, message)
    --     end)

    --     test('noble_gases.rubidium equals noble_gases["rb"]', function ()
    --         local rubidium = noble_gas.rubidium
    --         local rubidium_via_symbol = noble_gas["rb"]
    --         local message = 'noble_gases.rubidium doesn\'t equal noble_gases["rb"]'
    --         assert.are.equal(rubidium, rubidium_via_symbol, message)
    --     end)

    --     test('noble_gases.rubidium.name equals "Rubidium"', function ()
    --         local rubidium_name = noble_gas.rubidium.name
    --         local message = 'noble_gases.rubidium.name doesn\'t "Rubidium"'
    --         assert.are.equal("Rubidium", rubidium_name, message)
    --     end)

    --     test('noble_gases.rubidium.symbol equals "Rb"', function ()
    --         local rubidium_symbol = noble_gas.rubidium.symbol
    --         local message = 'noble_gases.rubidium.symbol doesn\'t "Rb"'
    --         assert.are.equal("Rb", rubidium_symbol, message)
    --     end)

    --     test("noble_gases.rubidium.number equals 37", function ()
    --         local rubidium_number = noble_gas.rubidium.number
    --         local message = "noble_gases.rubidium.number doesn\'t 37"
    --         assert.are.equal(37, rubidium_number, message)
    --     end)

    --     test("noble_gases.rubidium.oxidation_states equals {0}", function ()
    --         local rubidium_oxidation_states = noble_gas.rubidium.oxidation_states
    --         local expected_oxidation_sates = OxidationStates.new{0}
    --         local message = "noble_gases.rubidium.oxidation_states doesn\'t {0}"
    --         assert.are.same(expected_oxidation_sates, rubidium_oxidation_states, message)
    --     end)

    --     test("noble_gases.rubidium.mass equals 85.468", function ()
    --         local rubidium_mass = noble_gas.rubidium.mass
    --         local message = "noble_gases.rubidium.mass doesn\'t equal 85.468"
    --         assert.are.equal(85.468, rubidium_mass, message)
    --     end)

    --     test("noble_gases.rubidium.group equals 1", function ()
    --         local rubidium_group = noble_gas.rubidium.group
    --         local message = "noble_gases.rubidium.group doesn\'t equal 1"
    --         assert.are.equal(1, rubidium_group, message)
    --     end)

    --     test('noble_gases.rubidium.family equals "Noble Gas"', function ()
    --         local rubidium_family = noble_gas.rubidium.family
    --         local message = 'noble_gases.rubidium.family doesn\'t "Noble Gas"'
    --         assert.are.equal("Noble Gas", rubidium_family, message)
    --     end)

    --     test("noble_gases.rubidium.period equals 5", function ()
    --         local rubidium_period = noble_gas.rubidium.period
    --         local message = "noble_gases.rubidium.period doesn\'t 5"
    --         assert.are.equal(5, rubidium_period, message)
    --     end)

    --     test("noble_gases.rubidium.block equals 'p'", function ()
    --         local rubidium_block = noble_gas.rubidium.block
    --         local message = "noble_gases.rubidium.block doesn\'t 'p'"
    --         assert.are.equal('p', rubidium_block, message)
    --     end)

    --     test("noble_gases.rubidium.electronegativity is nil", function ()
    --         local rubidium_electronegativity = noble_gas.rubidium.electronegativity
    --         local message = "noble_gases.rubidium.electronegativity isn\'t nil"
    --         assert.are.equal(0.82, rubidium_electronegativity, message)
    --     end)

    --     test("noble_gases.rubidium.atomic_radius equals 303", function ()
    --         local rubidium_atomic_radius = noble_gas.rubidium.atomic_radius
    --         local message = "noble_gases.rubidium.atomic_radius does not equal 303"
    --         assert.are.equal(303, rubidium_atomic_radius, message)
    --     end)

    --     test("noble_gases.rubidium.ionization_energy equals 4.177", function ()
    --         local rubidium_ionization_energy = noble_gas.rubidium.ionization_energy
    --         local message = "noble_gases.rubidium.ionization_energy doesn\'t equal 4.177"
    --         assert.are.equal(4.177, rubidium_ionization_energy, message)
    --     end)

    --     test("noble_gases.rubidium.electron_affinity is nil", function ()
    --         local rubidium_electron_affinity = noble_gas.rubidium.electron_affinity
    --         local message = "noble_gases.rubidium.electron_affinity isn\'t nil"
    --         assert.are.equal(0.468, rubidium_electron_affinity, message)
    --     end)

    --     test("noble_gases.rubidium.melting_point equals 312.46", function ()
    --         local rubidium_melting_point = noble_gas.rubidium.melting_point
    --         local message = "noble_gases.rubidium.melting_point doesn\'t equal 312.46"
    --         assert.are.equal(312.46, rubidium_melting_point, message)
    --     end)

    --     test("noble_gases.rubidium.boiling_point equals 961", function ()
    --         local rubidium_boiling_point = noble_gas.rubidium.boiling_point
    --         local message = "noble_gases.rubidium.boiling_point doesn\'t equal 961"
    --         assert.are.equal(961, rubidium_boiling_point, message)
    --     end)

    --     test("noble_gases.rubidium.density equals 1.53", function ()
    --         local rubidium_density = noble_gas.rubidium.density
    --         local message = "noble_gases.rubidium.density doesn\'t 1.53"
    --         assert.are.equal(1.53, rubidium_density, message)
    --     end)

    --     test('noble_gases.rubidium.standard_state equals "Gas"', function ()
    --         local rubidium_standard_state = noble_gas.rubidium.standard_state
    --         local message = 'noble_gases.rubidium.standard_state doesn\'t "Gas"'
    --         assert.are.equal("Gas", rubidium_standard_state, message)
    --     end)
    -- end)

    -- describe("cesium", function()
    --     test("noble_gases.cesium equals non nil", function ()
    --         local cesium = noble_gas.cesium
    --         local message = "noble_gases.cesium equals nil"
    --         assert.is_not_nil(cesium, message)
    --     end)

    --     test("noble_gases.cesium equals noble_gases[55]", function ()
    --         local cesium = noble_gas.cesium
    --         local cesium_via_index = noble_gas[55]
    --         local message = "noble_gases.cesium doesn't equal noble_gases[55]"
    --         assert.are.equal(cesium, cesium_via_index, message)
    --     end)

    --     test('noble_gases.cesium equals noble_gases["cesium"]', function ()
    --         local cesium = noble_gas.cesium
    --         local cesium_via_name = noble_gas["cesium"]
    --         local message = 'noble_gases.cesium doesn\'t equal noble_gases["cesium"]'
    --         assert.are.equal(cesium, cesium_via_name, message)
    --     end)

    --     test('noble_gases.cesium equals noble_gases["cs"]', function ()
    --         local cesium = noble_gas.cesium
    --         local cesium_via_symbol = noble_gas["cs"]
    --         local message = 'noble_gases.cesium doesn\'t equal noble_gases["cs"]'
    --         assert.are.equal(cesium, cesium_via_symbol, message)
    --     end)

    --     test('noble_gases.cesium.name equals "Cesium"', function ()
    --         local cesium_name = noble_gas.cesium.name
    --         local message = 'noble_gases.cesium.name doesn\'t "Cesium"'
    --         assert.are.equal("Cesium", cesium_name, message)
    --     end)

    --     test('noble_gases.cesium.symbol equals "Cs"', function ()
    --         local cesium_symbol = noble_gas.cesium.symbol
    --         local message = 'noble_gases.cesium.symbol doesn\'t "Cs"'
    --         assert.are.equal("Cs", cesium_symbol, message)
    --     end)

    --     test("noble_gases.cesium.number equals 55", function ()
    --         local cesium_number = noble_gas.cesium.number
    --         local message = "noble_gases.cesium.number doesn\'t 55"
    --         assert.are.equal(55, cesium_number, message)
    --     end)

    --     test("noble_gases.cesium.oxidation_states equals {0}", function ()
    --         local cesium_oxidation_states = noble_gas.cesium.oxidation_states
    --         local expected_oxidation_sates = OxidationStates.new{0}
    --         local message = "noble_gases.cesium.oxidation_states doesn\'t {0}"
    --         assert.are.same(expected_oxidation_sates, cesium_oxidation_states, message)
    --     end)

    --     test("noble_gases.cesium.mass equals 132.90545196", function ()
    --         local cesium_mass = noble_gas.cesium.mass
    --         local message = "noble_gases.cesium.mass doesn\'t equal 132.90545196"
    --         assert.are.equal(132.90545196, cesium_mass, message)
    --     end)

    --     test("noble_gases.cesium.group equals 1", function ()
    --         local cesium_group = noble_gas.cesium.group
    --         local message = "noble_gases.cesium.group doesn\'t equal 1"
    --         assert.are.equal(1, cesium_group, message)
    --     end)

    --     test('noble_gases.cesium.family equals "Noble Gas"', function ()
    --         local cesium_family = noble_gas.cesium.family
    --         local message = 'noble_gases.cesium.family doesn\'t "Noble Gas"'
    --         assert.are.equal("Noble Gas", cesium_family, message)
    --     end)

    --     test("noble_gases.cesium.period equals 6", function ()
    --         local cesium_period = noble_gas.cesium.period
    --         local message = "noble_gases.cesium.period doesn\'t 6"
    --         assert.are.equal(6, cesium_period, message)
    --     end)

    --     test("noble_gases.cesium.block equals 'p'", function ()
    --         local cesium_block = noble_gas.cesium.block
    --         local message = "noble_gases.cesium.block doesn\'t 'p'"
    --         assert.are.equal('p', cesium_block, message)
    --     end)

    --     test("noble_gases.cesium.electronegativity is nil", function ()
    --         local cesium_electronegativity = noble_gas.cesium.electronegativity
    --         local message = "noble_gases.cesium.electronegativity isn\'t nil"
    --         assert.are.equal(0.79, cesium_electronegativity, message)
    --     end)

    --     test("noble_gases.cesium.atomic_radius equals 343", function ()
    --         local cesium_atomic_radius = noble_gas.cesium.atomic_radius
    --         local message = "noble_gases.cesium.atomic_radius does not equal 343"
    --         assert.are.equal(343, cesium_atomic_radius, message)
    --     end)

    --     test("noble_gases.cesium.ionization_energy equals 3.894", function ()
    --         local cesium_ionization_energy = noble_gas.cesium.ionization_energy
    --         local message = "noble_gases.cesium.ionization_energy doesn\'t equal 3.894"
    --         assert.are.equal(3.894, cesium_ionization_energy, message)
    --     end)

    --     test("noble_gases.cesium.electron_affinity is nil", function ()
    --         local cesium_electron_affinity = noble_gas.cesium.electron_affinity
    --         local message = "noble_gases.cesium.electron_affinity isn\'t nil"
    --         assert.are.equal(0.472, cesium_electron_affinity, message)
    --     end)

    --     test("noble_gases.cesium.melting_point equals 301.59", function ()
    --         local cesium_melting_point = noble_gas.cesium.melting_point
    --         local message = "noble_gases.cesium.melting_point doesn\'t equal 301.59"
    --         assert.are.equal(301.59, cesium_melting_point, message)
    --     end)

    --     test("noble_gases.cesium.boiling_point equals 944", function ()
    --         local cesium_boiling_point = noble_gas.cesium.boiling_point
    --         local message = "noble_gases.cesium.boiling_point doesn\'t equal 944"
    --         assert.are.equal(944, cesium_boiling_point, message)
    --     end)

    --     test("noble_gases.cesium.density equals 1.93", function ()
    --         local cesium_density = noble_gas.cesium.density
    --         local message = "noble_gases.cesium.density doesn\'t 1.93"
    --         assert.are.equal(1.93, cesium_density, message)
    --     end)

    --     test('noble_gases.cesium.standard_state equals "Gas"', function ()
    --         local cesium_standard_state = noble_gas.cesium.standard_state
    --         local message = 'noble_gases.cesium.standard_state doesn\'t "Gas"'
    --         assert.are.equal("Gas", cesium_standard_state, message)
    --     end)
    -- end)

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
