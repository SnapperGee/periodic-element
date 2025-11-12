local OxidationStates = require("periodic-element.element.oxidation_states")
local SubshellOccupancy = require("periodic-element.element.subshell_occupancy")

local element_keys = {
    "name", "symbol", "number", "oxidation_states", "mass", "group", "family",
    "period", "block", "electronegativity", "atomic_radius", "ionization_energy",
    "electron_affinity", "melting_point", "boiling_point", "density", "standard_state"
}

--- Converts an ``Element`` object into a csv string.
---@param element Element
---@return string
local function to_csv(element)

    local values = {}

    for i = 1, #element_keys do
        local element_key = element_keys[i]
        local element_property_value = element[element_key]
        local element_property_value_metatable = getmetatable(element_property_value)

        if element_property_value_metatable == OxidationStates then

            local oxidation_state_ints = {}

            for _, oxidation_state_int in element_property_value:ipairs() do
                oxidation_state_ints[#oxidation_state_ints+1] = oxidation_state_int
            end

            values[#values+1] = string.format("[%s]", table.concat(oxidation_state_ints, ", "))

        elseif element_property_value_metatable == SubshellOccupancy then
            values[#values+1] = element_property_value.canonical_string
        else
            values[#values+1] = element_property_value or ""
        end
    end

    return table.concat(values, ", ")
end

return to_csv
