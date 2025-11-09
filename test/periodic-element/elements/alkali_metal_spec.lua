local alkali_metals = require("periodic-element.elements.alkali_metal")

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
end)
