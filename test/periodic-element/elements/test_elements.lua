---@param element Element
---@param element_set ElementSet
---@param element_properties_and_values table<string, string|number|OxidationStates|nil>
---@param assert any
---@param test fun(msg: string, func: fun())
local function test_elements(element, element_set, element_properties_and_values, assert, test)
    for i = 1, #element_properties_and_values do
        local parameters = element_properties_and_values[i]
        local property_key = parameters[1]
        local expected_value = parameters[2]
        local test_string = expected_value ~= nil and string.format("%s.%s.%s equals %s", element_set:name(), element.name, property_key, tostring(expected_value)) or string.format("%s.%s.%s is nil", element_set:name(), element.name, property_key)
        local actual_value = element[property_key]

        if expected_value ~= nil then
            local function test_non_nil_function()
                local fail_message = string.format("%s.%s.%s doesn't equal %s", element_set:name(), element.name, property_key, tostring(expected_value))
                assert.are.equal(actual_value, expected_value, fail_message)
            end
            test(test_string, test_non_nil_function)
        else
            local function test_nil_function()
                local fail_message = string.format("%s.%s.%s isn't nil", element_set:name(), element.name, property_key)
                assert.is_nil(actual_value, fail_message)
            end
            test(test_string, test_nil_function)
        end
    end
end

return test_elements
