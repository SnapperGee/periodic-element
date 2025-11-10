local alkali_metals = require("periodic-element.elements.alkali_metal")
local OxidationStates = require("periodic-element.element.oxidation_states")

local lithium_properties = {
    {"name", "Lithium"},
    {"symbol", "Li"},
    {"number", 3},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 6.94},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 2},
    {"block", 's'},
    {"electronegativity", 0.98},
    {"atomic_radius", 182},
    {"ionization_energy", 5.392},
    {"electron_affinity", 0.618},
    {"melting_point", 453.65},
    {"boiling_point", 1615},
    {"density", 0.534},
    {"standard_state", "Solid"},
}

local sodium_properties = {
    {"name", "Sodium"},
    {"symbol", "Na"},
    {"number", 11},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 22.9897693},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 3},
    {"block", 's'},
    {"electronegativity", 0.93},
    {"atomic_radius", 227},
    {"ionization_energy", 5.139},
    {"electron_affinity", 0.548},
    {"melting_point", 370.95},
    {"boiling_point", 1156},
    {"density", 0.97},
    {"standard_state", "Solid"},
}

local potassium_properties = {
    {"name", "Potassium"},
    {"symbol", "K"},
    {"number", 19},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 39.0983},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 4},
    {"block", 's'},
    {"electronegativity", 0.82},
    {"atomic_radius", 275},
    {"ionization_energy", 4.341},
    {"electron_affinity", 0.501},
    {"melting_point", 336.53},
    {"boiling_point", 1032},
    {"density", 0.89},
    {"standard_state", "Solid"},
}

local rubidium_properties = {
    {"name", "Rubidium"},
    {"symbol", "Rb"},
    {"number", 37},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 85.468},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 5},
    {"block", 's'},
    {"electronegativity", 0.82},
    {"atomic_radius", 303},
    {"ionization_energy", 4.177},
    {"electron_affinity", 0.468},
    {"melting_point", 312.46},
    {"boiling_point", 961},
    {"density", 1.53},
    {"standard_state", "Solid"},
}

local cesium_properties = {
    {"name", "Cesium"},
    {"symbol", "Cs"},
    {"number", 55},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 132.90545196},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 6},
    {"block", 's'},
    {"electronegativity", 0.79},
    {"atomic_radius", 343},
    {"ionization_energy", 3.894},
    {"electron_affinity", 0.472},
    {"melting_point", 301.59},
    {"boiling_point", 944},
    {"density", 1.93},
    {"standard_state", "Solid"},
}

local francium_properties = {
    {"name", "Francium"},
    {"symbol", "Fr"},
    {"number", 87},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 223.01973},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 7},
    {"block", 's'},
    {"electronegativity", 0.7},
    {"atomic_radius", 348},
    {"ionization_energy", 3.9},
    {"electron_affinity", 0.47},
    {"melting_point", 300},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "Solid"},
}

describe("alkali_metals", function ()
    test("alkali_metals:length() returns 6", function ()
        local alkali_metals_length = alkali_metals:length()
        local message = "Expected alkali_metals:length() didn't return 6"
        assert.are.equal(6, alkali_metals_length, message)
    end)

    describe("lithium", function()
        test("alkali_metals.lithium equals non nil", function ()
            local lithium = alkali_metals.lithium
            local message = "alkali_metals.lithium equals nil"
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

        for i = 1, #lithium_properties do
            local lithium_test_parameters = lithium_properties[i]
            local lithium_property_key = lithium_test_parameters[1]
            local expected_lithium_property_value = lithium_test_parameters[2]
            local lithium_test_string = string.format("alkali_metals.lithium.%s equals %s", lithium_property_key, tostring(expected_lithium_property_value))
            local function lithium_test_function()
                local actual_lithium_property_value = alkali_metals.lithium[lithium_property_key]
                if expected_lithium_property_value ~= nil then
                    local lithium_message = string.format("alkali_metals.lithium.%s doesn't equal %s", lithium_property_key, tostring(expected_lithium_property_value))
                    assert.are.equal(actual_lithium_property_value, expected_lithium_property_value, lithium_message)
                else
                    local lithium_message = string.format("alkali_metals.lithium.%s isn't nil", lithium_property_key)
                    assert.is_nil(actual_lithium_property_value, lithium_message)
                end
            end
            test(lithium_test_string, lithium_test_function)
        end
    end)

    describe("sodium", function()
        test("alkali_metals.sodium equals non nil", function ()
            local sodium = alkali_metals.sodium
            local message = "alkali_metals.sodium equals nil"
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

        for i = 1, #sodium_properties do
            local sodium_test_parameters = sodium_properties[i]
            local sodium_property_key = sodium_test_parameters[1]
            local expected_sodium_property_value = sodium_test_parameters[2]
            local sodium_test_string = string.format("alkali_metals.sodium.%s equals %s", sodium_property_key, tostring(expected_sodium_property_value))
            local function sodium_test_function()
                local actual_sodium_property_value = alkali_metals.sodium[sodium_property_key]
                if expected_sodium_property_value ~= nil then
                    local sodium_message = string.format("alkali_metals.sodium.%s doesn't equal %s", sodium_property_key, tostring(expected_sodium_property_value))
                    assert.are.equal(actual_sodium_property_value, expected_sodium_property_value, sodium_message)
                else
                    local sodium_message = string.format("alkali_metals.sodium.%s isn't nil", sodium_property_key)
                    assert.is_nil(actual_sodium_property_value, sodium_message)
                end
            end
            test(sodium_test_string, sodium_test_function)
        end
    end)

    describe("potassium", function()
        test("alkali_metals.potassium equals non nil", function ()
            local potassium = alkali_metals.potassium
            local message = "alkali_metals.potassium equals nil"
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

        for i = 1, #potassium_properties do
            local potassium_test_parameters = potassium_properties[i]
            local potassium_property_key = potassium_test_parameters[1]
            local expected_potassium_property_value = potassium_test_parameters[2]
            local potassium_test_string = string.format("alkali_metals.potassium.%s equals %s", potassium_property_key, tostring(expected_potassium_property_value))
            local function potassium_test_function()
                local actual_potassium_property_value = alkali_metals.potassium[potassium_property_key]
                if expected_potassium_property_value ~= nil then
                    local potassium_message = string.format("alkali_metals.potassium.%s doesn't equal %s", potassium_property_key, tostring(expected_potassium_property_value))
                    assert.are.equal(actual_potassium_property_value, expected_potassium_property_value, potassium_message)
                else
                    local potassium_message = string.format("alkali_metals.potassium.%s isn't nil", potassium_property_key)
                    assert.is_nil(actual_potassium_property_value, potassium_message)
                end
            end
            test(potassium_test_string, potassium_test_function)
        end
    end)

    describe("rubidium", function()
        test("alkali_metals.rubidium equals non nil", function ()
            local rubidium = alkali_metals.rubidium
            local message = "alkali_metals.rubidium equals nil"
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

        for i = 1, #rubidium_properties do
            local rubidium_test_parameters = rubidium_properties[i]
            local rubidium_property_key = rubidium_test_parameters[1]
            local expected_rubidium_property_value = rubidium_test_parameters[2]
            local rubidium_test_string = string.format("alkali_metals.rubidium.%s equals %s", rubidium_property_key, tostring(expected_rubidium_property_value))
            local function rubidium_test_function()
                local actual_rubidium_property_value = alkali_metals.rubidium[rubidium_property_key]
                if expected_rubidium_property_value ~= nil then
                    local rubidium_message = string.format("alkali_metals.rubidium.%s doesn't equal %s", rubidium_property_key, tostring(expected_rubidium_property_value))
                    assert.are.equal(actual_rubidium_property_value, expected_rubidium_property_value, rubidium_message)
                else
                    local rubidium_message = string.format("alkali_metals.rubidium.%s isn't nil", rubidium_property_key)
                    assert.is_nil(actual_rubidium_property_value, rubidium_message)
                end
            end
            test(rubidium_test_string, rubidium_test_function)
        end
    end)

    describe("cesium", function()
        test("alkali_metals.cesium equals non nil", function ()
            local cesium = alkali_metals.cesium
            local message = "alkali_metals.cesium equals nil"
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

        for i = 1, #cesium_properties do
            local cesium_test_parameters = cesium_properties[i]
            local cesium_property_key = cesium_test_parameters[1]
            local expected_cesium_property_value = cesium_test_parameters[2]
            local cesium_test_string = string.format("alkali_metals.cesium.%s equals %s", cesium_property_key, tostring(expected_cesium_property_value))
            local function cesium_test_function()
                local actual_cesium_property_value = alkali_metals.cesium[cesium_property_key]
                if expected_cesium_property_value ~= nil then
                    local cesium_message = string.format("alkali_metals.cesium.%s doesn't equal %s", cesium_property_key, tostring(expected_cesium_property_value))
                    assert.are.equal(actual_cesium_property_value, expected_cesium_property_value, cesium_message)
                else
                    local cesium_message = string.format("alkali_metals.cesium.%s isn't nil", cesium_property_key)
                    assert.is_nil(actual_cesium_property_value, cesium_message)
                end
            end
            test(cesium_test_string, cesium_test_function)
        end
    end)

    describe("francium", function()
        test("alkali_metals.francium equals non nil", function ()
            local francium = alkali_metals.francium
            local message = "alkali_metals.francium equals nil"
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

        for i = 1, #francium_properties do
            local francium_test_parameters = francium_properties[i]
            local francium_property_key = francium_test_parameters[1]
            local expected_francium_property_value = francium_test_parameters[2]
            local francium_test_string = string.format("alkali_metals.francium.%s equals %s", francium_property_key, tostring(expected_francium_property_value))
            local function francium_test_function()
                local actual_francium_property_value = alkali_metals.francium[francium_property_key]
                if expected_francium_property_value ~= nil then
                    local francium_message = string.format("alkali_metals.francium.%s doesn't equal %s", francium_property_key, tostring(expected_francium_property_value))
                    assert.are.equal(actual_francium_property_value, expected_francium_property_value, francium_message)
                else
                    local francium_message = string.format("alkali_metals.francium.%s isn't nil", francium_property_key)
                    assert.is_nil(actual_francium_property_value, francium_message)
                end
            end
            test(francium_test_string, francium_test_function)
        end
    end)
end)
