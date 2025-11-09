local noble_gas = require("periodic-element.elements.noble_gas")
local OxidationStates = require("periodic-element.element.oxidation_states")

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

        test('noble_gases.helium.name equals "Helium"', function ()
            local helium_name = noble_gas.helium.name
            local message = 'noble_gases.helium.name did not return "Helium"'
            assert.are.equal("Helium", helium_name, message)
        end)

        test('noble_gases.helium.symbol equals "He"', function ()
            local helium_symbol = noble_gas.helium.symbol
            local message = 'noble_gases.helium.symbol did not return "He"'
            assert.are.equal("He", helium_symbol, message)
        end)

        test("noble_gases.helium.number equals 2", function ()
            local helium_number = noble_gas.helium.number
            local message = "noble_gases.helium.number did not return 2"
            assert.are.equal(2, helium_number, message)
        end)

        test("noble_gases.helium.oxidation_states equals {0}", function ()
            local helium_oxidation_states = noble_gas.helium.oxidation_states
            local expected_oxidation_sates = OxidationStates.new{0}
            local message = "noble_gases.helium.oxidation_states did not return {0}"
            assert.are.same(expected_oxidation_sates, helium_oxidation_states, message)
        end)

        test("noble_gases.helium.mass equals 4.0026", function ()
            local helium_mass = noble_gas.helium.mass
            local message = "noble_gases.helium.mass did not return 4.0026"
            assert.are.equal(4.0026, helium_mass, message)
        end)

        test("noble_gases.helium.group equals 18", function ()
            local helium_group = noble_gas.helium.group
            local message = "noble_gases.helium.group did not return 18"
            assert.are.equal(18, helium_group, message)
        end)

        test('noble_gases.helium.family equals "Noble Gas"', function ()
            local helium_family = noble_gas.helium.family
            local message = 'noble_gases.helium.family did not return "Noble Gas"'
            assert.are.equal("Noble Gas", helium_family, message)
        end)

        test("noble_gases.helium.period equals 1", function ()
            local helium_period = noble_gas.helium.period
            local message = "noble_gases.helium.period did not return 1"
            assert.are.equal(1, helium_period, message)
        end)

        test("noble_gases.helium.block equals 's'", function ()
            local helium_block = noble_gas.helium.block
            local message = "noble_gases.helium.block did not return 's'"
            assert.are.equal('s', helium_block, message)
        end)

        test("noble_gases.helium.electronegativity is nil", function ()
            local helium_electronegativity = noble_gas.helium.electronegativity
            local message = "noble_gases.helium.electronegativity isn't nil"
            assert.is_nil(helium_electronegativity, message)
        end)

        test("noble_gases.helium.atomic_radius equals 140", function ()
            local helium_atomic_radius = noble_gas.helium.atomic_radius
            local message = "noble_gases.helium.atomic_radius did not return 140"
            assert.are.equal(140, helium_atomic_radius, message)
        end)

        test("noble_gases.helium.ionization_energy equals 24.587", function ()
            local helium_ionization_energy = noble_gas.helium.ionization_energy
            local message = "noble_gases.helium.ionization_energy did not return 24.587"
            assert.are.equal(24.587, helium_ionization_energy, message)
        end)

        test("noble_gases.helium.electron_affinity is nil", function ()
            local helium_electron_affinity = noble_gas.helium.electron_affinity
            local message = "noble_gases.helium.electron_affinity isn't nil"
            assert.is_nil(helium_electron_affinity, message)
        end)

        test("noble_gases.helium.melting_point equals 0.95", function ()
            local helium_melting_point = noble_gas.helium.melting_point
            local message = "noble_gases.helium.melting_point did not return 0.95"
            assert.are.equal(0.95, helium_melting_point, message)
        end)

        test("noble_gases.helium.boiling_point equals 4.22", function ()
            local helium_boiling_point = noble_gas.helium.boiling_point
            local message = "noble_gases.helium.boiling_point did not return 4.22"
            assert.are.equal(4.22, helium_boiling_point, message)
        end)

        test("noble_gases.helium.density equals 0.0001785", function ()
            local helium_density = noble_gas.helium.density
            local message = "noble_gases.helium.density did not return 0.0001785"
            assert.are.equal(0.0001785, helium_density, message)
        end)

        test('noble_gases.helium.standard_state equals "Gas"', function ()
            local helium_standard_state = noble_gas.helium.standard_state
            local message = 'noble_gases.helium.standard_state doesn\'t equal "Gas"'
            assert.are.equal("Gas", helium_standard_state, message)
        end)
    end)

    -- describe("sodium", function()
    --     test("noble_gases.sodium equals non nil", function ()
    --         local sodium = noble_gas.sodium
    --         local message = "noble_gases.sodium equals nil"
    --         assert.is_not_nil(sodium, message)
    --     end)

    --     test("noble_gases.sodium equals noble_gases[11]", function ()
    --         local sodium = noble_gas.sodium
    --         local sodium_via_index = noble_gas[11]
    --         local message = "noble_gases.sodium doesn't equal noble_gases[11]"
    --         assert.are.equal(sodium, sodium_via_index, message)
    --     end)

    --     test('noble_gases.sodium equals noble_gases["sodium"]', function ()
    --         local sodium = noble_gas.sodium
    --         local sodium_via_name = noble_gas["sodium"]
    --         local message = 'noble_gases.sodium doesn\'t equal noble_gases["sodium"]'
    --         assert.are.equal(sodium, sodium_via_name, message)
    --     end)

    --     test('noble_gases.sodium equals noble_gases["na"]', function ()
    --         local sodium = noble_gas.sodium
    --         local sodium_via_symbol = noble_gas["na"]
    --         local message = 'noble_gases.sodium doesn\'t equal noble_gases["na"]'
    --         assert.are.equal(sodium, sodium_via_symbol, message)
    --     end)

    --     test('noble_gases.sodium.name equals "Sodium"', function ()
    --         local sodium_name = noble_gas.sodium.name
    --         local message = 'noble_gases.sodium.name did not return "Sodium"'
    --         assert.are.equal("Sodium", sodium_name, message)
    --     end)

    --     test('noble_gases.sodium.symbol equals "Na"', function ()
    --         local sodium_symbol = noble_gas.sodium.symbol
    --         local message = 'noble_gases.sodium.symbol did not return "Na"'
    --         assert.are.equal("Na", sodium_symbol, message)
    --     end)

    --     test("noble_gases.sodium.number equals 11", function ()
    --         local sodium_number = noble_gas.sodium.number
    --         local message = "noble_gases.sodium.number did not return 11"
    --         assert.are.equal(11, sodium_number, message)
    --     end)

    --     test("noble_gases.sodium.oxidation_states equals {0}", function ()
    --         local sodium_oxidation_states = noble_gas.sodium.oxidation_states
    --         local expected_oxidation_sates = OxidationStates.new{0}
    --         local message = "noble_gases.sodium.oxidation_states did not return {0}"
    --         assert.are.same(expected_oxidation_sates, sodium_oxidation_states, message)
    --     end)

    --     test("noble_gases.sodium.mass equals 22.9897693", function ()
    --         local sodium_mass = noble_gas.sodium.mass
    --         local message = "noble_gases.sodium.mass did not return 22.9897693"
    --         assert.are.equal(22.9897693, sodium_mass, message)
    --     end)

    --     test("noble_gases.sodium.group equals 1", function ()
    --         local sodium_group = noble_gas.sodium.group
    --         local message = "noble_gases.sodium.group did not return 1"
    --         assert.are.equal(1, sodium_group, message)
    --     end)

    --     test('noble_gases.sodium.family equals "Noble Gas"', function ()
    --         local sodium_family = noble_gas.sodium.family
    --         local message = 'noble_gases.sodium.family did not return "Noble Gas"'
    --         assert.are.equal("Noble Gas", sodium_family, message)
    --     end)

    --     test("noble_gases.sodium.period equals 3", function ()
    --         local sodium_period = noble_gas.sodium.period
    --         local message = "noble_gases.sodium.period did not return 3"
    --         assert.are.equal(3, sodium_period, message)
    --     end)

    --     test("noble_gases.sodium.block equals 'p'", function ()
    --         local sodium_block = noble_gas.sodium.block
    --         local message = "noble_gases.sodium.block did not return 'p'"
    --         assert.are.equal('p', sodium_block, message)
    --     end)

    --     test("noble_gases.sodium.electronegativity equals 0.93", function ()
    --         local sodium_electronegativity = noble_gas.sodium.electronegativity
    --         local message = "noble_gases.sodium.electronegativity did not return 0.93"
    --         assert.are.equal(0.93, sodium_electronegativity, message)
    --     end)

    --     test("noble_gases.sodium.atomic_radius equals 227", function ()
    --         local sodium_atomic_radius = noble_gas.sodium.atomic_radius
    --         local message = "noble_gases.sodium.atomic_radius did not return 227"
    --         assert.are.equal(227, sodium_atomic_radius, message)
    --     end)

    --     test("noble_gases.sodium.ionization_energy equals 5.139", function ()
    --         local sodium_ionization_energy = noble_gas.sodium.ionization_energy
    --         local message = "noble_gases.sodium.ionization_energy did not return 5.139"
    --         assert.are.equal(5.139, sodium_ionization_energy, message)
    --     end)

    --     test("noble_gases.sodium.electron_affinity equals 0.548", function ()
    --         local sodium_electron_affinity = noble_gas.sodium.electron_affinity
    --         local message = "noble_gases.sodium.electron_affinity did not return 0.548"
    --         assert.are.equal(0.548, sodium_electron_affinity, message)
    --     end)

    --     test("noble_gases.sodium.melting_point equals 370.95", function ()
    --         local sodium_melting_point = noble_gas.sodium.melting_point
    --         local message = "noble_gases.sodium.melting_point did not return 370.95"
    --         assert.are.equal(370.95, sodium_melting_point, message)
    --     end)

    --     test("noble_gases.sodium.boiling_point equals 1156", function ()
    --         local sodium_boiling_point = noble_gas.sodium.boiling_point
    --         local message = "noble_gases.sodium.boiling_point did not return 1156"
    --         assert.are.equal(1156, sodium_boiling_point, message)
    --     end)

    --     test("noble_gases.sodium.density equals 0.97", function ()
    --         local sodium_density = noble_gas.sodium.density
    --         local message = "noble_gases.sodium.density did not return 0.97"
    --         assert.are.equal(0.97, sodium_density, message)
    --     end)

    --     test('noble_gases.sodium.standard_state equals "Solid"', function ()
    --         local sodium_standard_state = noble_gas.sodium.standard_state
    --         local message = 'noble_gases.sodium.standard_state did not return "Solid"'
    --         assert.are.equal("Solid", sodium_standard_state, message)
    --     end)
    -- end)

    -- describe("potassium", function()
    --     test("noble_gases.potassium equals non nil", function ()
    --         local potassium = noble_gas.potassium
    --         local message = "noble_gases.potassium equals nil"
    --         assert.is_not_nil(potassium, message)
    --     end)

    --     test("noble_gases.potassium equals noble_gases[19]", function ()
    --         local potassium = noble_gas.potassium
    --         local potassium_via_index = noble_gas[19]
    --         local message = "noble_gases.potassium doesn't equal noble_gases[19]"
    --         assert.are.equal(potassium, potassium_via_index, message)
    --     end)

    --     test('noble_gases.potassium equals noble_gases["potassium"]', function ()
    --         local potassium = noble_gas.potassium
    --         local potassium_via_name = noble_gas["potassium"]
    --         local message = 'noble_gases.potassium doesn\'t equal noble_gases["potassium"]'
    --         assert.are.equal(potassium, potassium_via_name, message)
    --     end)

    --     test('noble_gases.potassium equals noble_gases["k"]', function ()
    --         local potassium = noble_gas.potassium
    --         local potassium_via_symbol = noble_gas["k"]
    --         local message = 'noble_gases.potassium doesn\'t equal noble_gases["k"]'
    --         assert.are.equal(potassium, potassium_via_symbol, message)
    --     end)

    --     test('noble_gases.potassium.name equals "Potassium"', function ()
    --         local potassium_name = noble_gas.potassium.name
    --         local message = 'noble_gases.potassium.name did not return "Potassium"'
    --         assert.are.equal("Potassium", potassium_name, message)
    --     end)

    --     test('noble_gases.potassium.symbol equals "K"', function ()
    --         local potassium_symbol = noble_gas.potassium.symbol
    --         local message = 'noble_gases.potassium.symbol did not return "K"'
    --         assert.are.equal("K", potassium_symbol, message)
    --     end)

    --     test("noble_gases.potassium.number equals 19", function ()
    --         local potassium_number = noble_gas.potassium.number
    --         local message = "noble_gases.potassium.number did not return 19"
    --         assert.are.equal(19, potassium_number, message)
    --     end)

    --     test("noble_gases.potassium.oxidation_states equals {0}", function ()
    --         local potassium_oxidation_states = noble_gas.potassium.oxidation_states
    --         local expected_oxidation_sates = OxidationStates.new{0}
    --         local message = "noble_gases.potassium.oxidation_states did not return {0}"
    --         assert.are.same(expected_oxidation_sates, potassium_oxidation_states, message)
    --     end)

    --     test("noble_gases.potassium.mass equals 39.0983", function ()
    --         local potassium_mass = noble_gas.potassium.mass
    --         local message = "noble_gases.potassium.mass did not return 39.0983"
    --         assert.are.equal(39.0983, potassium_mass, message)
    --     end)

    --     test("noble_gases.potassium.group equals 1", function ()
    --         local potassium_group = noble_gas.potassium.group
    --         local message = "noble_gases.potassium.group did not return 1"
    --         assert.are.equal(1, potassium_group, message)
    --     end)

    --     test('noble_gases.potassium.family equals "Noble Gas"', function ()
    --         local potassium_family = noble_gas.potassium.family
    --         local message = 'noble_gases.potassium.family did not return "Noble Gas"'
    --         assert.are.equal("Noble Gas", potassium_family, message)
    --     end)

    --     test("noble_gases.potassium.period equals 4", function ()
    --         local potassium_period = noble_gas.potassium.period
    --         local message = "noble_gases.potassium.period did not return 4"
    --         assert.are.equal(4, potassium_period, message)
    --     end)

    --     test("noble_gases.potassium.block equals 'p'", function ()
    --         local potassium_block = noble_gas.potassium.block
    --         local message = "noble_gases.potassium.block did not return 'p'"
    --         assert.are.equal('p', potassium_block, message)
    --     end)

    --     test("noble_gases.potassium.electronegativity equals 0.82", function ()
    --         local potassium_electronegativity = noble_gas.potassium.electronegativity
    --         local message = "noble_gases.potassium.electronegativity did not return 0.82"
    --         assert.are.equal(0.82, potassium_electronegativity, message)
    --     end)

    --     test("noble_gases.potassium.atomic_radius equals 275", function ()
    --         local potassium_atomic_radius = noble_gas.potassium.atomic_radius
    --         local message = "noble_gases.potassium.atomic_radius did not return 275"
    --         assert.are.equal(275, potassium_atomic_radius, message)
    --     end)

    --     test("noble_gases.potassium.ionization_energy equals 4.341", function ()
    --         local potassium_ionization_energy = noble_gas.potassium.ionization_energy
    --         local message = "noble_gases.potassium.ionization_energy did not return 4.341"
    --         assert.are.equal(4.341, potassium_ionization_energy, message)
    --     end)

    --     test("noble_gases.potassium.electron_affinity equals 0.501", function ()
    --         local potassium_electron_affinity = noble_gas.potassium.electron_affinity
    --         local message = "noble_gases.potassium.electron_affinity did not return 0.501"
    --         assert.are.equal(0.501, potassium_electron_affinity, message)
    --     end)

    --     test("noble_gases.potassium.melting_point equals 336.53", function ()
    --         local potassium_melting_point = noble_gas.potassium.melting_point
    --         local message = "noble_gases.potassium.melting_point did not return 336.53"
    --         assert.are.equal(336.53, potassium_melting_point, message)
    --     end)

    --     test("noble_gases.potassium.boiling_point equals 1032", function ()
    --         local potassium_boiling_point = noble_gas.potassium.boiling_point
    --         local message = "noble_gases.potassium.boiling_point did not return 1032"
    --         assert.are.equal(1032, potassium_boiling_point, message)
    --     end)

    --     test("noble_gases.potassium.density equals 0.89", function ()
    --         local potassium_density = noble_gas.potassium.density
    --         local message = "noble_gases.potassium.density did not return 0.89"
    --         assert.are.equal(0.89, potassium_density, message)
    --     end)

    --     test('noble_gases.potassium.standard_state equals "Solid"', function ()
    --         local potassium_standard_state = noble_gas.potassium.standard_state
    --         local message = 'noble_gases.potassium.standard_state did not return "Solid"'
    --         assert.are.equal("Solid", potassium_standard_state, message)
    --     end)
    -- end)

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
    --         local message = 'noble_gases.rubidium.name did not return "Rubidium"'
    --         assert.are.equal("Rubidium", rubidium_name, message)
    --     end)

    --     test('noble_gases.rubidium.symbol equals "Rb"', function ()
    --         local rubidium_symbol = noble_gas.rubidium.symbol
    --         local message = 'noble_gases.rubidium.symbol did not return "Rb"'
    --         assert.are.equal("Rb", rubidium_symbol, message)
    --     end)

    --     test("noble_gases.rubidium.number equals 37", function ()
    --         local rubidium_number = noble_gas.rubidium.number
    --         local message = "noble_gases.rubidium.number did not return 37"
    --         assert.are.equal(37, rubidium_number, message)
    --     end)

    --     test("noble_gases.rubidium.oxidation_states equals {0}", function ()
    --         local rubidium_oxidation_states = noble_gas.rubidium.oxidation_states
    --         local expected_oxidation_sates = OxidationStates.new{0}
    --         local message = "noble_gases.rubidium.oxidation_states did not return {0}"
    --         assert.are.same(expected_oxidation_sates, rubidium_oxidation_states, message)
    --     end)

    --     test("noble_gases.rubidium.mass equals 85.468", function ()
    --         local rubidium_mass = noble_gas.rubidium.mass
    --         local message = "noble_gases.rubidium.mass did not return 85.468"
    --         assert.are.equal(85.468, rubidium_mass, message)
    --     end)

    --     test("noble_gases.rubidium.group equals 1", function ()
    --         local rubidium_group = noble_gas.rubidium.group
    --         local message = "noble_gases.rubidium.group did not return 1"
    --         assert.are.equal(1, rubidium_group, message)
    --     end)

    --     test('noble_gases.rubidium.family equals "Noble Gas"', function ()
    --         local rubidium_family = noble_gas.rubidium.family
    --         local message = 'noble_gases.rubidium.family did not return "Noble Gas"'
    --         assert.are.equal("Noble Gas", rubidium_family, message)
    --     end)

    --     test("noble_gases.rubidium.period equals 5", function ()
    --         local rubidium_period = noble_gas.rubidium.period
    --         local message = "noble_gases.rubidium.period did not return 5"
    --         assert.are.equal(5, rubidium_period, message)
    --     end)

    --     test("noble_gases.rubidium.block equals 'p'", function ()
    --         local rubidium_block = noble_gas.rubidium.block
    --         local message = "noble_gases.rubidium.block did not return 'p'"
    --         assert.are.equal('p', rubidium_block, message)
    --     end)

    --     test("noble_gases.rubidium.electronegativity equals 0.82", function ()
    --         local rubidium_electronegativity = noble_gas.rubidium.electronegativity
    --         local message = "noble_gases.rubidium.electronegativity did not return 0.82"
    --         assert.are.equal(0.82, rubidium_electronegativity, message)
    --     end)

    --     test("noble_gases.rubidium.atomic_radius equals 303", function ()
    --         local rubidium_atomic_radius = noble_gas.rubidium.atomic_radius
    --         local message = "noble_gases.rubidium.atomic_radius did not return 303"
    --         assert.are.equal(303, rubidium_atomic_radius, message)
    --     end)

    --     test("noble_gases.rubidium.ionization_energy equals 4.177", function ()
    --         local rubidium_ionization_energy = noble_gas.rubidium.ionization_energy
    --         local message = "noble_gases.rubidium.ionization_energy did not return 4.177"
    --         assert.are.equal(4.177, rubidium_ionization_energy, message)
    --     end)

    --     test("noble_gases.rubidium.electron_affinity equals 0.468", function ()
    --         local rubidium_electron_affinity = noble_gas.rubidium.electron_affinity
    --         local message = "noble_gases.rubidium.electron_affinity did not return 0.468"
    --         assert.are.equal(0.468, rubidium_electron_affinity, message)
    --     end)

    --     test("noble_gases.rubidium.melting_point equals 312.46", function ()
    --         local rubidium_melting_point = noble_gas.rubidium.melting_point
    --         local message = "noble_gases.rubidium.melting_point did not return 312.46"
    --         assert.are.equal(312.46, rubidium_melting_point, message)
    --     end)

    --     test("noble_gases.rubidium.boiling_point equals 961", function ()
    --         local rubidium_boiling_point = noble_gas.rubidium.boiling_point
    --         local message = "noble_gases.rubidium.boiling_point did not return 961"
    --         assert.are.equal(961, rubidium_boiling_point, message)
    --     end)

    --     test("noble_gases.rubidium.density equals 1.53", function ()
    --         local rubidium_density = noble_gas.rubidium.density
    --         local message = "noble_gases.rubidium.density did not return 1.53"
    --         assert.are.equal(1.53, rubidium_density, message)
    --     end)

    --     test('noble_gases.rubidium.standard_state equals "Solid"', function ()
    --         local rubidium_standard_state = noble_gas.rubidium.standard_state
    --         local message = 'noble_gases.rubidium.standard_state did not return "Solid"'
    --         assert.are.equal("Solid", rubidium_standard_state, message)
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
    --         local message = 'noble_gases.cesium.name did not return "Cesium"'
    --         assert.are.equal("Cesium", cesium_name, message)
    --     end)

    --     test('noble_gases.cesium.symbol equals "Cs"', function ()
    --         local cesium_symbol = noble_gas.cesium.symbol
    --         local message = 'noble_gases.cesium.symbol did not return "Cs"'
    --         assert.are.equal("Cs", cesium_symbol, message)
    --     end)

    --     test("noble_gases.cesium.number equals 55", function ()
    --         local cesium_number = noble_gas.cesium.number
    --         local message = "noble_gases.cesium.number did not return 55"
    --         assert.are.equal(55, cesium_number, message)
    --     end)

    --     test("noble_gases.cesium.oxidation_states equals {0}", function ()
    --         local cesium_oxidation_states = noble_gas.cesium.oxidation_states
    --         local expected_oxidation_sates = OxidationStates.new{0}
    --         local message = "noble_gases.cesium.oxidation_states did not return {0}"
    --         assert.are.same(expected_oxidation_sates, cesium_oxidation_states, message)
    --     end)

    --     test("noble_gases.cesium.mass equals 132.90545196", function ()
    --         local cesium_mass = noble_gas.cesium.mass
    --         local message = "noble_gases.cesium.mass did not return 132.90545196"
    --         assert.are.equal(132.90545196, cesium_mass, message)
    --     end)

    --     test("noble_gases.cesium.group equals 1", function ()
    --         local cesium_group = noble_gas.cesium.group
    --         local message = "noble_gases.cesium.group did not return 1"
    --         assert.are.equal(1, cesium_group, message)
    --     end)

    --     test('noble_gases.cesium.family equals "Noble Gas"', function ()
    --         local cesium_family = noble_gas.cesium.family
    --         local message = 'noble_gases.cesium.family did not return "Noble Gas"'
    --         assert.are.equal("Noble Gas", cesium_family, message)
    --     end)

    --     test("noble_gases.cesium.period equals 6", function ()
    --         local cesium_period = noble_gas.cesium.period
    --         local message = "noble_gases.cesium.period did not return 6"
    --         assert.are.equal(6, cesium_period, message)
    --     end)

    --     test("noble_gases.cesium.block equals 'p'", function ()
    --         local cesium_block = noble_gas.cesium.block
    --         local message = "noble_gases.cesium.block did not return 'p'"
    --         assert.are.equal('p', cesium_block, message)
    --     end)

    --     test("noble_gases.cesium.electronegativity equals 0.79", function ()
    --         local cesium_electronegativity = noble_gas.cesium.electronegativity
    --         local message = "noble_gases.cesium.electronegativity did not return 0.79"
    --         assert.are.equal(0.79, cesium_electronegativity, message)
    --     end)

    --     test("noble_gases.cesium.atomic_radius equals 343", function ()
    --         local cesium_atomic_radius = noble_gas.cesium.atomic_radius
    --         local message = "noble_gases.cesium.atomic_radius did not return 343"
    --         assert.are.equal(343, cesium_atomic_radius, message)
    --     end)

    --     test("noble_gases.cesium.ionization_energy equals 3.894", function ()
    --         local cesium_ionization_energy = noble_gas.cesium.ionization_energy
    --         local message = "noble_gases.cesium.ionization_energy did not return 3.894"
    --         assert.are.equal(3.894, cesium_ionization_energy, message)
    --     end)

    --     test("noble_gases.cesium.electron_affinity equals 0.472", function ()
    --         local cesium_electron_affinity = noble_gas.cesium.electron_affinity
    --         local message = "noble_gases.cesium.electron_affinity did not return 0.472"
    --         assert.are.equal(0.472, cesium_electron_affinity, message)
    --     end)

    --     test("noble_gases.cesium.melting_point equals 301.59", function ()
    --         local cesium_melting_point = noble_gas.cesium.melting_point
    --         local message = "noble_gases.cesium.melting_point did not return 301.59"
    --         assert.are.equal(301.59, cesium_melting_point, message)
    --     end)

    --     test("noble_gases.cesium.boiling_point equals 944", function ()
    --         local cesium_boiling_point = noble_gas.cesium.boiling_point
    --         local message = "noble_gases.cesium.boiling_point did not return 944"
    --         assert.are.equal(944, cesium_boiling_point, message)
    --     end)

    --     test("noble_gases.cesium.density equals 1.93", function ()
    --         local cesium_density = noble_gas.cesium.density
    --         local message = "noble_gases.cesium.density did not return 1.93"
    --         assert.are.equal(1.93, cesium_density, message)
    --     end)

    --     test('noble_gases.cesium.standard_state equals "Solid"', function ()
    --         local cesium_standard_state = noble_gas.cesium.standard_state
    --         local message = 'noble_gases.cesium.standard_state did not return "Solid"'
    --         assert.are.equal("Solid", cesium_standard_state, message)
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
    --         local message = 'noble_gases.francium.name did not return "Francium"'
    --         assert.are.equal("Francium", francium_name, message)
    --     end)

    --     test('noble_gases.francium.symbol equals "Fr"', function ()
    --         local francium_symbol = noble_gas.francium.symbol
    --         local message = 'noble_gases.francium.symbol did not return "Fr"'
    --         assert.are.equal("Fr", francium_symbol, message)
    --     end)

    --     test("noble_gases.francium.number equals 87", function ()
    --         local francium_number = noble_gas.francium.number
    --         local message = "noble_gases.francium.number did not return 87"
    --         assert.are.equal(87, francium_number, message)
    --     end)

    --     test("noble_gases.francium.oxidation_states equals {0}", function ()
    --         local francium_oxidation_states = noble_gas.francium.oxidation_states
    --         local expected_oxidation_sates = OxidationStates.new{0}
    --         local message = "noble_gases.francium.oxidation_states did not return {0}"
    --         assert.are.same(expected_oxidation_sates, francium_oxidation_states, message)
    --     end)

    --     test("noble_gases.francium.mass equals 223.01973", function ()
    --         local francium_mass = noble_gas.francium.mass
    --         local message = "noble_gases.francium.mass did not return 223.01973"
    --         assert.are.equal(223.01973, francium_mass, message)
    --     end)

    --     test("noble_gases.francium.group equals 1", function ()
    --         local francium_group = noble_gas.francium.group
    --         local message = "noble_gases.francium.group did not return 1"
    --         assert.are.equal(1, francium_group, message)
    --     end)

    --     test('noble_gases.francium.family equals "Noble Gas"', function ()
    --         local francium_family = noble_gas.francium.family
    --         local message = 'noble_gases.francium.family did not return "Noble Gas"'
    --         assert.are.equal("Noble Gas", francium_family, message)
    --     end)

    --     test("noble_gases.francium.period equals 7", function ()
    --         local francium_period = noble_gas.francium.period
    --         local message = "noble_gases.francium.period did not return 7"
    --         assert.are.equal(7, francium_period, message)
    --     end)

    --     test("noble_gases.francium.block equals 'p'", function ()
    --         local francium_block = noble_gas.francium.block
    --         local message = "noble_gases.francium.block did not return 'p'"
    --         assert.are.equal('p', francium_block, message)
    --     end)

    --     test("noble_gases.francium.electronegativity equals 0.7", function ()
    --         local francium_electronegativity = noble_gas.francium.electronegativity
    --         local message = "noble_gases.francium.electronegativity did not return 0.7"
    --         assert.are.equal(0.7, francium_electronegativity, message)
    --     end)

    --     test("noble_gases.francium.atomic_radius equals 348", function ()
    --         local francium_atomic_radius = noble_gas.francium.atomic_radius
    --         local message = "noble_gases.francium.atomic_radius did not return 348"
    --         assert.are.equal(348, francium_atomic_radius, message)
    --     end)

    --     test("noble_gases.francium.ionization_energy equals 3.9", function ()
    --         local francium_ionization_energy = noble_gas.francium.ionization_energy
    --         local message = "noble_gases.francium.ionization_energy did not return 3.9"
    --         assert.are.equal(3.9, francium_ionization_energy, message)
    --     end)

    --     test("noble_gases.francium.electron_affinity equals 0.47", function ()
    --         local francium_electron_affinity = noble_gas.francium.electron_affinity
    --         local message = "noble_gases.francium.electron_affinity did not return 0.47"
    --         assert.are.equal(0.47, francium_electron_affinity, message)
    --     end)

    --     test("noble_gases.francium.melting_point equals 300", function ()
    --         local francium_melting_point = noble_gas.francium.melting_point
    --         local message = "noble_gases.francium.melting_point did not return 300"
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

    --     test('noble_gases.francium.standard_state equals "Solid"', function ()
    --         local francium_standard_state = noble_gas.francium.standard_state
    --         local message = 'noble_gases.francium.standard_state did not return "Solid"'
    --         assert.are.equal("Solid", francium_standard_state, message)
    --     end)
    -- end)
end)
