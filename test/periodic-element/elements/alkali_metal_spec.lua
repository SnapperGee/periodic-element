local alkali_metals = require("periodic-element.elements.alkali_metal")
local OxidationStates = require("periodic-element.element.oxidation_states")

describe("alkali_metals", function ()
    test("alkali_metals:length() should return 6", function ()
        local alkali_metals_length = alkali_metals:length()
        local message = "Expected alkali_metals:length() didn't return  6"
        assert.are.equal(6, alkali_metals_length, message)
    end)

    describe("lithium", function()
        test("alkali_metals.lithium returns non nil", function ()
            local lithium = alkali_metals.lithium
            local message = "alkali_metals.lithium returned nil"
            assert.is_not_nil(lithium, message)
        end)

        test("alkali_metals.lithium equals alkali_metals[3]", function ()
            local lithium = alkali_metals.lithium
            local lithium_via_index = alkali_metals[3]
            local message = "alkali_metals.lithium doesn't equal alkali_metals[3]"
            assert.are.equal(lithium, lithium_via_index, message)
        end)

        test('alkali_metals.lithium equals alkali_metals["lithium"]', function ()
            local lithium = alkali_metals.lithium
            local lithium_via_name = alkali_metals["lithium"]
            local message = 'alkali_metals.lithium doesn\'t equal alkali_metals["lithium"]'
            assert.are.equal(lithium, lithium_via_name, message)
        end)

        test('alkali_metals.lithium equals alkali_metals["li"]', function ()
            local lithium = alkali_metals.lithium
            local lithium_via_symbol = alkali_metals["li"]
            local message = 'alkali_metals.lithium doesn\'t equal alkali_metals["li"]'
            assert.are.equal(lithium, lithium_via_symbol, message)
        end)

        test('alkali_metals.lithium.name returns "Lithium"', function ()
            local lithium_name = alkali_metals.lithium.name
            local message = 'alkali_metals.lithium.name did not return "Lithium"'
            assert.are.equal("Lithium", lithium_name, message)
        end)

        test('alkali_metals.lithium.symbol returns "Li"', function ()
            local lithium_symbol = alkali_metals.lithium.symbol
            local message = 'alkali_metals.lithium.symbol did not return "Li"'
            assert.are.equal("Li", lithium_symbol, message)
        end)

        test("alkali_metals.lithium.number returns 3", function ()
            local lithium_number = alkali_metals.lithium.number
            local message = "alkali_metals.lithium.number did not return 3"
            assert.are.equal(3, lithium_number, message)
        end)

        test("alkali_metals.lithium.oxidation_states returns {+1}", function ()
            local lithium_oxidation_states = alkali_metals.lithium.oxidation_states
            local expected_oxidation_sates = OxidationStates.new{1}
            local message = "alkali_metals.lithium.oxidation_states did not return {+1}"
            assert.are.same(expected_oxidation_sates, lithium_oxidation_states, message)
        end)

        test("alkali_metals.lithium.mass returns 6.94", function ()
            local lithium_mass = alkali_metals.lithium.mass
            local message = "alkali_metals.lithium.mass did not return 6.94"
            assert.are.equal(6.94, lithium_mass, message)
        end)

        test("alkali_metals.lithium.group returns 1", function ()
            local lithium_group = alkali_metals.lithium.group
            local message = "alkali_metals.lithium.group did not return 1"
            assert.are.equal(1, lithium_group, message)
        end)

        test('alkali_metals.lithium.family returns "Alkali Metal"', function ()
            local lithium_family = alkali_metals.lithium.family
            local message = 'alkali_metals.lithium.family did not return "Alkali Metal"'
            assert.are.equal("Alkali Metal", lithium_family, message)
        end)

        test("alkali_metals.lithium.period returns 2", function ()
            local lithium_period = alkali_metals.lithium.period
            local message = "alkali_metals.lithium.period did not return 2"
            assert.are.equal(2, lithium_period, message)
        end)

        test("alkali_metals.lithium.block returns 's'", function ()
            local lithium_block = alkali_metals.lithium.block
            local message = "alkali_metals.lithium.block did not return 's'"
            assert.are.equal('s', lithium_block, message)
        end)

        test("alkali_metals.lithium.electronegativity returns 0.98", function ()
            local lithium_electronegativity = alkali_metals.lithium.electronegativity
            local message = "alkali_metals.lithium.electronegativity did not return 0.98"
            assert.are.equal(0.98, lithium_electronegativity, message)
        end)

        test("alkali_metals.lithium.atomic_radius returns 182", function ()
            local lithium_atomic_radius = alkali_metals.lithium.atomic_radius
            local message = "alkali_metals.lithium.atomic_radius did not return 182"
            assert.are.equal(182, lithium_atomic_radius, message)
        end)

        test("alkali_metals.lithium.ionization_energy returns 5.392", function ()
            local lithium_ionization_energy = alkali_metals.lithium.ionization_energy
            local message = "alkali_metals.lithium.ionization_energy did not return 5.392"
            assert.are.equal(5.392, lithium_ionization_energy, message)
        end)

        test("alkali_metals.lithium.electron_affinity returns 0.618", function ()
            local lithium_electron_affinity = alkali_metals.lithium.electron_affinity
            local message = "alkali_metals.lithium.electron_affinity did not return 0.618"
            assert.are.equal(0.618, lithium_electron_affinity, message)
        end)

        test("alkali_metals.lithium.melting_point returns 453.65", function ()
            local lithium_melting_point = alkali_metals.lithium.melting_point
            local message = "alkali_metals.lithium.melting_point did not return 453.65"
            assert.are.equal(453.65, lithium_melting_point, message)
        end)

        test("alkali_metals.lithium.boiling_point returns 1615", function ()
            local lithium_boiling_point = alkali_metals.lithium.boiling_point
            local message = "alkali_metals.lithium.boiling_point did not return 1615"
            assert.are.equal(1615, lithium_boiling_point, message)
        end)

        test("alkali_metals.lithium.density returns 0.534", function ()
            local lithium_density = alkali_metals.lithium.density
            local message = "alkali_metals.lithium.density did not return 0.534"
            assert.are.equal(0.534, lithium_density, message)
        end)
    end)

    describe("sodium", function()
        test("alkali_metals.sodium returns non nil", function ()
            local sodium = alkali_metals.sodium
            local message = "alkali_metals.sodium returned nil"
            assert.is_not_nil(sodium, message)
        end)

        test("alkali_metals.sodium equals alkali_metals[11]", function ()
            local sodium = alkali_metals.sodium
            local sodium_via_index = alkali_metals[11]
            local message = "alkali_metals.sodium doesn't equal alkali_metals[11]"
            assert.are.equal(sodium, sodium_via_index, message)
        end)

        test('alkali_metals.sodium equals alkali_metals["sodium"]', function ()
            local sodium = alkali_metals.sodium
            local sodium_via_name = alkali_metals["sodium"]
            local message = 'alkali_metals.sodium doesn\'t equal alkali_metals["sodium"]'
            assert.are.equal(sodium, sodium_via_name, message)
        end)

        test('alkali_metals.sodium equals alkali_metals["na"]', function ()
            local sodium = alkali_metals.sodium
            local sodium_via_symbol = alkali_metals["na"]
            local message = 'alkali_metals.sodium doesn\'t equal alkali_metals["na"]'
            assert.are.equal(sodium, sodium_via_symbol, message)
        end)

        test('alkali_metals.sodium.name returns "Sodium"', function ()
            local sodium_name = alkali_metals.sodium.name
            local message = 'alkali_metals.sodium.name did not return "Sodium"'
            assert.are.equal("Sodium", sodium_name, message)
        end)

        test('alkali_metals.sodium.symbol returns "Na"', function ()
            local sodium_symbol = alkali_metals.sodium.symbol
            local message = 'alkali_metals.sodium.symbol did not return "Na"'
            assert.are.equal("Na", sodium_symbol, message)
        end)

        test("alkali_metals.sodium.number returns 11", function ()
            local sodium_number = alkali_metals.sodium.number
            local message = "alkali_metals.sodium.number did not return 11"
            assert.are.equal(11, sodium_number, message)
        end)

        test("alkali_metals.sodium.oxidation_states returns {+1}", function ()
            local sodium_oxidation_states = alkali_metals.sodium.oxidation_states
            local expected_oxidation_sates = OxidationStates.new{1}
            local message = "alkali_metals.sodium.oxidation_states did not return {+1}"
            assert.are.same(expected_oxidation_sates, sodium_oxidation_states, message)
        end)

        test("alkali_metals.sodium.mass returns 22.9897693", function ()
            local sodium_mass = alkali_metals.sodium.mass
            local message = "alkali_metals.sodium.mass did not return 22.9897693"
            assert.are.equal(22.9897693, sodium_mass, message)
        end)

        test("alkali_metals.sodium.group returns 1", function ()
            local sodium_group = alkali_metals.sodium.group
            local message = "alkali_metals.sodium.group did not return 1"
            assert.are.equal(1, sodium_group, message)
        end)

        test('alkali_metals.sodium.family returns "Alkali Metal"', function ()
            local sodium_family = alkali_metals.sodium.family
            local message = 'alkali_metals.sodium.family did not return "Alkali Metal"'
            assert.are.equal("Alkali Metal", sodium_family, message)
        end)

        test("alkali_metals.sodium.period returns 3", function ()
            local sodium_period = alkali_metals.sodium.period
            local message = "alkali_metals.sodium.period did not return 3"
            assert.are.equal(3, sodium_period, message)
        end)

        test("alkali_metals.sodium.block returns 's'", function ()
            local sodium_block = alkali_metals.sodium.block
            local message = "alkali_metals.sodium.block did not return 's'"
            assert.are.equal('s', sodium_block, message)
        end)

        test("alkali_metals.sodium.electronegativity returns 0.93", function ()
            local sodium_electronegativity = alkali_metals.sodium.electronegativity
            local message = "alkali_metals.sodium.electronegativity did not return 0.93"
            assert.are.equal(0.93, sodium_electronegativity, message)
        end)

        test("alkali_metals.sodium.atomic_radius returns 227", function ()
            local sodium_atomic_radius = alkali_metals.sodium.atomic_radius
            local message = "alkali_metals.sodium.atomic_radius did not return 227"
            assert.are.equal(227, sodium_atomic_radius, message)
        end)

        test("alkali_metals.sodium.ionization_energy returns 5.139", function ()
            local sodium_ionization_energy = alkali_metals.sodium.ionization_energy
            local message = "alkali_metals.sodium.ionization_energy did not return 5.139"
            assert.are.equal(5.139, sodium_ionization_energy, message)
        end)

        test("alkali_metals.sodium.electron_affinity returns 0.548", function ()
            local sodium_electron_affinity = alkali_metals.sodium.electron_affinity
            local message = "alkali_metals.sodium.electron_affinity did not return 0.548"
            assert.are.equal(0.548, sodium_electron_affinity, message)
        end)

        test("alkali_metals.sodium.melting_point returns 370.95", function ()
            local sodium_melting_point = alkali_metals.sodium.melting_point
            local message = "alkali_metals.sodium.melting_point did not return 370.95"
            assert.are.equal(370.95, sodium_melting_point, message)
        end)

        test("alkali_metals.sodium.boiling_point returns 1156", function ()
            local sodium_boiling_point = alkali_metals.sodium.boiling_point
            local message = "alkali_metals.sodium.boiling_point did not return 1156"
            assert.are.equal(1156, sodium_boiling_point, message)
        end)

        test("alkali_metals.sodium.density returns 0.97", function ()
            local sodium_density = alkali_metals.sodium.density
            local message = "alkali_metals.sodium.density did not return 0.97"
            assert.are.equal(0.97, sodium_density, message)
        end)
    end)

    describe("potassium", function()
        test("alkali_metals.potassium returns non nil", function ()
            local potassium = alkali_metals.potassium
            local message = "alkali_metals.potassium returned nil"
            assert.is_not_nil(potassium, message)
        end)

        test("alkali_metals.potassium equals alkali_metals[19]", function ()
            local potassium = alkali_metals.potassium
            local potassium_via_index = alkali_metals[19]
            local message = "alkali_metals.potassium doesn't equal alkali_metals[19]"
            assert.are.equal(potassium, potassium_via_index, message)
        end)

        test('alkali_metals.potassium equals alkali_metals["potassium"]', function ()
            local potassium = alkali_metals.potassium
            local potassium_via_name = alkali_metals["potassium"]
            local message = 'alkali_metals.potassium doesn\'t equal alkali_metals["potassium"]'
            assert.are.equal(potassium, potassium_via_name, message)
        end)

        test('alkali_metals.potassium equals alkali_metals["k"]', function ()
            local potassium = alkali_metals.potassium
            local potassium_via_symbol = alkali_metals["k"]
            local message = 'alkali_metals.potassium doesn\'t equal alkali_metals["k"]'
            assert.are.equal(potassium, potassium_via_symbol, message)
        end)

        test('alkali_metals.potassium.name returns "Potassium"', function ()
            local potassium_name = alkali_metals.potassium.name
            local message = 'alkali_metals.potassium.name did not return "Potassium"'
            assert.are.equal("Potassium", potassium_name, message)
        end)

        test('alkali_metals.potassium.symbol returns "K"', function ()
            local potassium_symbol = alkali_metals.potassium.symbol
            local message = 'alkali_metals.potassium.symbol did not return "K"'
            assert.are.equal("K", potassium_symbol, message)
        end)

        test("alkali_metals.potassium.number returns 19", function ()
            local potassium_number = alkali_metals.potassium.number
            local message = "alkali_metals.potassium.number did not return 19"
            assert.are.equal(19, potassium_number, message)
        end)

        test("alkali_metals.potassium.oxidation_states returns {+1}", function ()
            local potassium_oxidation_states = alkali_metals.potassium.oxidation_states
            local expected_oxidation_sates = OxidationStates.new{1}
            local message = "alkali_metals.potassium.oxidation_states did not return {+1}"
            assert.are.same(expected_oxidation_sates, potassium_oxidation_states, message)
        end)

        test("alkali_metals.potassium.mass returns 39.0983", function ()
            local potassium_mass = alkali_metals.potassium.mass
            local message = "alkali_metals.potassium.mass did not return 39.0983"
            assert.are.equal(39.0983, potassium_mass, message)
        end)

        test("alkali_metals.potassium.group returns 1", function ()
            local potassium_group = alkali_metals.potassium.group
            local message = "alkali_metals.potassium.group did not return 1"
            assert.are.equal(1, potassium_group, message)
        end)

        test('alkali_metals.potassium.family returns "Alkali Metal"', function ()
            local potassium_family = alkali_metals.potassium.family
            local message = 'alkali_metals.potassium.family did not return "Alkali Metal"'
            assert.are.equal("Alkali Metal", potassium_family, message)
        end)

        test("alkali_metals.potassium.period returns 4", function ()
            local potassium_period = alkali_metals.potassium.period
            local message = "alkali_metals.potassium.period did not return 4"
            assert.are.equal(4, potassium_period, message)
        end)

        test("alkali_metals.potassium.block returns 's'", function ()
            local potassium_block = alkali_metals.potassium.block
            local message = "alkali_metals.potassium.block did not return 's'"
            assert.are.equal('s', potassium_block, message)
        end)

        test("alkali_metals.potassium.electronegativity returns 0.82", function ()
            local potassium_electronegativity = alkali_metals.potassium.electronegativity
            local message = "alkali_metals.potassium.electronegativity did not return 0.82"
            assert.are.equal(0.82, potassium_electronegativity, message)
        end)

        test("alkali_metals.potassium.atomic_radius returns 275", function ()
            local potassium_atomic_radius = alkali_metals.potassium.atomic_radius
            local message = "alkali_metals.potassium.atomic_radius did not return 275"
            assert.are.equal(275, potassium_atomic_radius, message)
        end)

        test("alkali_metals.potassium.ionization_energy returns 4.341", function ()
            local potassium_ionization_energy = alkali_metals.potassium.ionization_energy
            local message = "alkali_metals.potassium.ionization_energy did not return 4.341"
            assert.are.equal(4.341, potassium_ionization_energy, message)
        end)

        test("alkali_metals.potassium.electron_affinity returns 0.501", function ()
            local potassium_electron_affinity = alkali_metals.potassium.electron_affinity
            local message = "alkali_metals.potassium.electron_affinity did not return 0.501"
            assert.are.equal(0.501, potassium_electron_affinity, message)
        end)

        test("alkali_metals.potassium.melting_point returns 336.53", function ()
            local potassium_melting_point = alkali_metals.potassium.melting_point
            local message = "alkali_metals.potassium.melting_point did not return 336.53"
            assert.are.equal(336.53, potassium_melting_point, message)
        end)

        test("alkali_metals.potassium.boiling_point returns 1032", function ()
            local potassium_boiling_point = alkali_metals.potassium.boiling_point
            local message = "alkali_metals.potassium.boiling_point did not return 1032"
            assert.are.equal(1032, potassium_boiling_point, message)
        end)

        test("alkali_metals.potassium.density returns 0.89", function ()
            local potassium_density = alkali_metals.potassium.density
            local message = "alkali_metals.potassium.density did not return 0.89"
            assert.are.equal(0.89, potassium_density, message)
        end)
    end)

    describe("rubidium", function()
        test("alkali_metals.rubidium returns non nil", function ()
            local rubidium = alkali_metals.rubidium
            local message = "alkali_metals.rubidium returned nil"
            assert.is_not_nil(rubidium, message)
        end)

        test("alkali_metals.rubidium equals alkali_metals[37]", function ()
            local rubidium = alkali_metals.rubidium
            local rubidium_via_index = alkali_metals[37]
            local message = "alkali_metals.rubidium doesn't equal alkali_metals[37]"
            assert.are.equal(rubidium, rubidium_via_index, message)
        end)

        test('alkali_metals.rubidium equals alkali_metals["rubidium"]', function ()
            local rubidium = alkali_metals.rubidium
            local rubidium_via_name = alkali_metals["rubidium"]
            local message = 'alkali_metals.rubidium doesn\'t equal alkali_metals["rubidium"]'
            assert.are.equal(rubidium, rubidium_via_name, message)
        end)

        test('alkali_metals.rubidium equals alkali_metals["rb"]', function ()
            local rubidium = alkali_metals.rubidium
            local rubidium_via_symbol = alkali_metals["rb"]
            local message = 'alkali_metals.rubidium doesn\'t equal alkali_metals["rb"]'
            assert.are.equal(rubidium, rubidium_via_symbol, message)
        end)

        test('alkali_metals.rubidium.name returns "Rubidium"', function ()
            local rubidium_name = alkali_metals.rubidium.name
            local message = 'alkali_metals.rubidium.name did not return "Rubidium"'
            assert.are.equal("Rubidium", rubidium_name, message)
        end)

        test('alkali_metals.rubidium.symbol returns "Rb"', function ()
            local rubidium_symbol = alkali_metals.rubidium.symbol
            local message = 'alkali_metals.rubidium.symbol did not return "Rb"'
            assert.are.equal("Rb", rubidium_symbol, message)
        end)

        test("alkali_metals.rubidium.number returns 37", function ()
            local rubidium_number = alkali_metals.rubidium.number
            local message = "alkali_metals.rubidium.number did not return 37"
            assert.are.equal(37, rubidium_number, message)
        end)

        test("alkali_metals.rubidium.oxidation_states returns {+1}", function ()
            local rubidium_oxidation_states = alkali_metals.rubidium.oxidation_states
            local expected_oxidation_sates = OxidationStates.new{1}
            local message = "alkali_metals.rubidium.oxidation_states did not return {+1}"
            assert.are.same(expected_oxidation_sates, rubidium_oxidation_states, message)
        end)

        test("alkali_metals.rubidium.mass returns 85.468", function ()
            local rubidium_mass = alkali_metals.rubidium.mass
            local message = "alkali_metals.rubidium.mass did not return 85.468"
            assert.are.equal(85.468, rubidium_mass, message)
        end)

        test("alkali_metals.rubidium.group returns 1", function ()
            local rubidium_group = alkali_metals.rubidium.group
            local message = "alkali_metals.rubidium.group did not return 1"
            assert.are.equal(1, rubidium_group, message)
        end)

        test('alkali_metals.rubidium.family returns "Alkali Metal"', function ()
            local rubidium_family = alkali_metals.rubidium.family
            local message = 'alkali_metals.rubidium.family did not return "Alkali Metal"'
            assert.are.equal("Alkali Metal", rubidium_family, message)
        end)

        test("alkali_metals.rubidium.period returns 5", function ()
            local rubidium_period = alkali_metals.rubidium.period
            local message = "alkali_metals.rubidium.period did not return 5"
            assert.are.equal(5, rubidium_period, message)
        end)

        test("alkali_metals.rubidium.block returns 's'", function ()
            local rubidium_block = alkali_metals.rubidium.block
            local message = "alkali_metals.rubidium.block did not return 's'"
            assert.are.equal('s', rubidium_block, message)
        end)

        test("alkali_metals.rubidium.electronegativity returns 0.82", function ()
            local rubidium_electronegativity = alkali_metals.rubidium.electronegativity
            local message = "alkali_metals.rubidium.electronegativity did not return 0.82"
            assert.are.equal(0.82, rubidium_electronegativity, message)
        end)

        test("alkali_metals.rubidium.atomic_radius returns 303", function ()
            local rubidium_atomic_radius = alkali_metals.rubidium.atomic_radius
            local message = "alkali_metals.rubidium.atomic_radius did not return 303"
            assert.are.equal(303, rubidium_atomic_radius, message)
        end)

        test("alkali_metals.rubidium.ionization_energy returns 4.177", function ()
            local rubidium_ionization_energy = alkali_metals.rubidium.ionization_energy
            local message = "alkali_metals.rubidium.ionization_energy did not return 4.177"
            assert.are.equal(4.177, rubidium_ionization_energy, message)
        end)

        test("alkali_metals.rubidium.electron_affinity returns 0.468", function ()
            local rubidium_electron_affinity = alkali_metals.rubidium.electron_affinity
            local message = "alkali_metals.rubidium.electron_affinity did not return 0.468"
            assert.are.equal(0.468, rubidium_electron_affinity, message)
        end)

        test("alkali_metals.rubidium.melting_point returns 312.46", function ()
            local rubidium_melting_point = alkali_metals.rubidium.melting_point
            local message = "alkali_metals.rubidium.melting_point did not return 312.46"
            assert.are.equal(312.46, rubidium_melting_point, message)
        end)

        test("alkali_metals.rubidium.boiling_point returns 961", function ()
            local rubidium_boiling_point = alkali_metals.rubidium.boiling_point
            local message = "alkali_metals.rubidium.boiling_point did not return 961"
            assert.are.equal(961, rubidium_boiling_point, message)
        end)

        test("alkali_metals.rubidium.density returns 1.53", function ()
            local rubidium_density = alkali_metals.rubidium.density
            local message = "alkali_metals.rubidium.density did not return 1.53"
            assert.are.equal(1.53, rubidium_density, message)
        end)
    end)

    describe("cesium", function()
        test("alkali_metals.cesium returns non nil", function ()
            local cesium = alkali_metals.cesium
            local message = "alkali_metals.cesium returned nil"
            assert.is_not_nil(cesium, message)
        end)

        test("alkali_metals.cesium equals alkali_metals[55]", function ()
            local cesium = alkali_metals.cesium
            local cesium_via_index = alkali_metals[55]
            local message = "alkali_metals.cesium doesn't equal alkali_metals[55]"
            assert.are.equal(cesium, cesium_via_index, message)
        end)

        test('alkali_metals.cesium equals alkali_metals["cesium"]', function ()
            local cesium = alkali_metals.cesium
            local cesium_via_name = alkali_metals["cesium"]
            local message = 'alkali_metals.cesium doesn\'t equal alkali_metals["cesium"]'
            assert.are.equal(cesium, cesium_via_name, message)
        end)

        test('alkali_metals.cesium equals alkali_metals["cs"]', function ()
            local cesium = alkali_metals.cesium
            local cesium_via_symbol = alkali_metals["cs"]
            local message = 'alkali_metals.cesium doesn\'t equal alkali_metals["cs"]'
            assert.are.equal(cesium, cesium_via_symbol, message)
        end)

        test('alkali_metals.cesium.name returns "Cesium"', function ()
            local cesium_name = alkali_metals.cesium.name
            local message = 'alkali_metals.cesium.name did not return "Cesium"'
            assert.are.equal("Cesium", cesium_name, message)
        end)

        test('alkali_metals.cesium.symbol returns "Cs"', function ()
            local cesium_symbol = alkali_metals.cesium.symbol
            local message = 'alkali_metals.cesium.symbol did not return "Cs"'
            assert.are.equal("Cs", cesium_symbol, message)
        end)

        test("alkali_metals.cesium.number returns 55", function ()
            local cesium_number = alkali_metals.cesium.number
            local message = "alkali_metals.cesium.number did not return 55"
            assert.are.equal(55, cesium_number, message)
        end)

        test("alkali_metals.cesium.oxidation_states returns {+1}", function ()
            local cesium_oxidation_states = alkali_metals.cesium.oxidation_states
            local expected_oxidation_sates = OxidationStates.new{1}
            local message = "alkali_metals.cesium.oxidation_states did not return {+1}"
            assert.are.same(expected_oxidation_sates, cesium_oxidation_states, message)
        end)

        test("alkali_metals.cesium.mass returns 132.90545196", function ()
            local cesium_mass = alkali_metals.cesium.mass
            local message = "alkali_metals.cesium.mass did not return 132.90545196"
            assert.are.equal(132.90545196, cesium_mass, message)
        end)

        test("alkali_metals.cesium.group returns 1", function ()
            local cesium_group = alkali_metals.cesium.group
            local message = "alkali_metals.cesium.group did not return 1"
            assert.are.equal(1, cesium_group, message)
        end)

        test('alkali_metals.cesium.family returns "Alkali Metal"', function ()
            local cesium_family = alkali_metals.cesium.family
            local message = 'alkali_metals.cesium.family did not return "Alkali Metal"'
            assert.are.equal("Alkali Metal", cesium_family, message)
        end)

        test("alkali_metals.cesium.period returns 6", function ()
            local cesium_period = alkali_metals.cesium.period
            local message = "alkali_metals.cesium.period did not return 6"
            assert.are.equal(6, cesium_period, message)
        end)

        test("alkali_metals.cesium.block returns 's'", function ()
            local cesium_block = alkali_metals.cesium.block
            local message = "alkali_metals.cesium.block did not return 's'"
            assert.are.equal('s', cesium_block, message)
        end)

        test("alkali_metals.cesium.electronegativity returns 0.79", function ()
            local cesium_electronegativity = alkali_metals.cesium.electronegativity
            local message = "alkali_metals.cesium.electronegativity did not return 0.79"
            assert.are.equal(0.79, cesium_electronegativity, message)
        end)

        test("alkali_metals.cesium.atomic_radius returns 343", function ()
            local cesium_atomic_radius = alkali_metals.cesium.atomic_radius
            local message = "alkali_metals.cesium.atomic_radius did not return 343"
            assert.are.equal(343, cesium_atomic_radius, message)
        end)

        test("alkali_metals.cesium.ionization_energy returns 3.894", function ()
            local cesium_ionization_energy = alkali_metals.cesium.ionization_energy
            local message = "alkali_metals.cesium.ionization_energy did not return 3.894"
            assert.are.equal(3.894, cesium_ionization_energy, message)
        end)

        test("alkali_metals.cesium.electron_affinity returns 0.472", function ()
            local cesium_electron_affinity = alkali_metals.cesium.electron_affinity
            local message = "alkali_metals.cesium.electron_affinity did not return 0.472"
            assert.are.equal(0.472, cesium_electron_affinity, message)
        end)

        test("alkali_metals.cesium.melting_point returns 301.59", function ()
            local cesium_melting_point = alkali_metals.cesium.melting_point
            local message = "alkali_metals.cesium.melting_point did not return 301.59"
            assert.are.equal(301.59, cesium_melting_point, message)
        end)

        test("alkali_metals.cesium.boiling_point returns 944", function ()
            local cesium_boiling_point = alkali_metals.cesium.boiling_point
            local message = "alkali_metals.cesium.boiling_point did not return 944"
            assert.are.equal(944, cesium_boiling_point, message)
        end)

        test("alkali_metals.cesium.density returns 1.93", function ()
            local cesium_density = alkali_metals.cesium.density
            local message = "alkali_metals.cesium.density did not return 1.93"
            assert.are.equal(1.93, cesium_density, message)
        end)
    end)

    describe("francium", function()
        test("alkali_metals.francium returns non nil", function ()
            local francium = alkali_metals.francium
            local message = "alkali_metals.francium returned nil"
            assert.is_not_nil(francium, message)
        end)

        test("alkali_metals.francium equals alkali_metals[87]", function ()
            local francium = alkali_metals.francium
            local francium_via_index = alkali_metals[87]
            local message = "alkali_metals.francium doesn't equal alkali_metals[87]"
            assert.are.equal(francium, francium_via_index, message)
        end)

        test('alkali_metals.francium equals alkali_metals["francium"]', function ()
            local francium = alkali_metals.francium
            local francium_via_name = alkali_metals["francium"]
            local message = 'alkali_metals.francium doesn\'t equal alkali_metals["francium"]'
            assert.are.equal(francium, francium_via_name, message)
        end)

        test('alkali_metals.francium equals alkali_metals["fr"]', function ()
            local francium = alkali_metals.francium
            local francium_via_symbol = alkali_metals["fr"]
            local message = 'alkali_metals.francium doesn\'t equal alkali_metals["fr"]'
            assert.are.equal(francium, francium_via_symbol, message)
        end)

        test('alkali_metals.francium.name returns "Francium"', function ()
            local francium_name = alkali_metals.francium.name
            local message = 'alkali_metals.francium.name did not return "Francium"'
            assert.are.equal("Francium", francium_name, message)
        end)

        test('alkali_metals.francium.symbol returns "Fr"', function ()
            local francium_symbol = alkali_metals.francium.symbol
            local message = 'alkali_metals.francium.symbol did not return "Fr"'
            assert.are.equal("Fr", francium_symbol, message)
        end)

        test("alkali_metals.francium.number returns 87", function ()
            local francium_number = alkali_metals.francium.number
            local message = "alkali_metals.francium.number did not return 87"
            assert.are.equal(87, francium_number, message)
        end)

        test("alkali_metals.francium.oxidation_states returns {+1}", function ()
            local francium_oxidation_states = alkali_metals.francium.oxidation_states
            local expected_oxidation_sates = OxidationStates.new{1}
            local message = "alkali_metals.francium.oxidation_states did not return {+1}"
            assert.are.same(expected_oxidation_sates, francium_oxidation_states, message)
        end)

        test("alkali_metals.francium.mass returns 223.01973", function ()
            local francium_mass = alkali_metals.francium.mass
            local message = "alkali_metals.francium.mass did not return 223.01973"
            assert.are.equal(223.01973, francium_mass, message)
        end)

        test("alkali_metals.francium.group returns 1", function ()
            local francium_group = alkali_metals.francium.group
            local message = "alkali_metals.francium.group did not return 1"
            assert.are.equal(1, francium_group, message)
        end)

        test('alkali_metals.francium.family returns "Alkali Metal"', function ()
            local francium_family = alkali_metals.francium.family
            local message = 'alkali_metals.francium.family did not return "Alkali Metal"'
            assert.are.equal("Alkali Metal", francium_family, message)
        end)

        test("alkali_metals.francium.period returns 7", function ()
            local francium_period = alkali_metals.francium.period
            local message = "alkali_metals.francium.period did not return 7"
            assert.are.equal(7, francium_period, message)
        end)

        test("alkali_metals.francium.block returns 's'", function ()
            local francium_block = alkali_metals.francium.block
            local message = "alkali_metals.francium.block did not return 's'"
            assert.are.equal('s', francium_block, message)
        end)

        test("alkali_metals.francium.electronegativity returns 0.7", function ()
            local francium_electronegativity = alkali_metals.francium.electronegativity
            local message = "alkali_metals.francium.electronegativity did not return 0.7"
            assert.are.equal(0.7, francium_electronegativity, message)
        end)

        test("alkali_metals.francium.atomic_radius returns 348", function ()
            local francium_atomic_radius = alkali_metals.francium.atomic_radius
            local message = "alkali_metals.francium.atomic_radius did not return 348"
            assert.are.equal(348, francium_atomic_radius, message)
        end)

        test("alkali_metals.francium.ionization_energy returns 3.9", function ()
            local francium_ionization_energy = alkali_metals.francium.ionization_energy
            local message = "alkali_metals.francium.ionization_energy did not return 3.9"
            assert.are.equal(3.9, francium_ionization_energy, message)
        end)

        test("alkali_metals.francium.electron_affinity returns 0.47", function ()
            local francium_electron_affinity = alkali_metals.francium.electron_affinity
            local message = "alkali_metals.francium.electron_affinity did not return 0.47"
            assert.are.equal(0.47, francium_electron_affinity, message)
        end)

        test("alkali_metals.francium.melting_point returns 300", function ()
            local francium_melting_point = alkali_metals.francium.melting_point
            local message = "alkali_metals.francium.melting_point did not return 300"
            assert.are.equal(300, francium_melting_point, message)
        end)

        test("alkali_metals.francium.boiling_point is nil", function ()
            local francium_boiling_point = alkali_metals.francium.boiling_point
            local message = "alkali_metals.francium.boiling_point isn't nil"
            assert.is_nil(francium_boiling_point, message)
        end)

        test("alkali_metals.francium.density is nil", function ()
            local francium_density = alkali_metals.francium.density
            local message = "alkali_metals.francium.density isn't nil"
            assert.is_nil(francium_density, message)
        end)
    end)
end)
