local csv = require("periodic-element.element.csv")
local nonmetal = require("periodic-element.elements.nonmetal")

local hydrogen = nonmetal.hydrogen

describe("csv", function ()
    describe("csv.column_header_values() should not return nil for any Hydrogen property value", function ()
        local column_header_values = csv.column_header_values()
        for i = 1, #column_header_values do
            local header_column_value = column_header_values[i]
            local test_string = string.format('hydrogen["%s"] doesn\'t return nil', header_column_value)
            test(test_string, function ()
                local fail_message = string.format('hydrogen["%s"] returned nil', header_column_value)
                assert.is_not_nil(hydrogen[header_column_value], fail_message)
            end)
        end
    end)
end)
