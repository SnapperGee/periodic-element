local csv = require("periodic-element.element.csv")
local Element = require("periodic-element.element")
local nonmetal = require("periodic-element.elements.nonmetal")

local hydrogen = nonmetal.hydrogen

describe("csv", function ()
    describe("csv.column_header_values()", function ()
        local column_header_values_array = csv.column_header_values()
        local column_header_values_set = {}

        for i = 1, #column_header_values_array do
            local header_column_value = column_header_values_array[i]
            column_header_values_set[header_column_value] = true
        end

        describe("csv.column_header_values() values can be as Hydrogen index access without returning nil", function ()
            for i = 1, #column_header_values_array do
                local header_column_value = column_header_values_array[i]
                local test_string = string.format('hydrogen["%s"] from csv.column_header_values() doesn\'t return nil', header_column_value)
                test(test_string, function ()
                    local fail_message = string.format('hydrogen["%s"] from csv.column_header_values() returned nil', header_column_value)
                    assert.is_not_nil(hydrogen[header_column_value], fail_message)
                end)
            end
        end)

        describe("csv.column_header_values() contains all values Hydrogen has as property keys", function ()
            local function get_internal_DATA()
                for i = 1, math.huge do
                    local name, value = debug.getupvalue(Element.formatted_string, i)
                    if not name then
                        break
                    end
                    if name == "DATA" then
                        return value
                    end
                end
            end

            local INTERNAL_DATA = get_internal_DATA()
            local raw_hydrogen_table = INTERNAL_DATA[hydrogen]

            for hydrogen_property_key, _ in pairs(raw_hydrogen_table) do
                local test_string = string.format('csv.column_header_values() contains "%s"', hydrogen_property_key)
                test(test_string, function ()
                    local fail_message = string.format('csv.column_header_values() doesn\'t contain "%s"', hydrogen_property_key)
                    assert.is_true(column_header_values_set[hydrogen_property_key], fail_message)
                end)
            end
        end)
    end)
end)
