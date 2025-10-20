local is_array = require("util.is_array")

local OxidationStates = {}

function OxidationStates:ipairs()
    local a = DATA[self]
    local i = 0
    return function()
        i = i + 1
        if i <= #a then return i, a[i] end
    end
end

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        local self_data = DATA[self]
        if self_data ~= nil then
            local value = self_data[k]
            if value ~= nil then return value end
        end
        return OxidationStates[k]
    end,
    __newindex = function(self, k, v)
        error("OxidationStates records are immutable", 2)
    end,
    __eq = function(self, other)
        if rawequal(self, other) then return true end

        local self_data, other_data = DATA[self], DATA[other]

        if self_data == nil or other_data == nil then
            return false
        end

        if #self_data ~= #other_data then
            return false
        end

        for i = 1, #self_data do

            local self_oxidation_state = self_data[i]
            local other_oxidation_state = other_data[i]

            if self_oxidation_state ~= other_oxidation_state then
                return false
            end
        end

        return true
    end,
    __metatable = OxidationStates
}

---@param oxidation_states integer[]
---@return OxidationStates
function OxidationStates:new(oxidation_states)
    assert(
        is_array(oxidation_states, function(v) return type(v) == "number" and v == math.floor(v) end),
        "integer array required"
    )

    local oxidation_states_copy, seen = {}, {}

    for i, v in ipairs(oxidation_states) do

        if seen[v] then
            error("duplicate oxidation state value: " .. tostring(v), 2)
        end

        seen[v] = true
        oxidation_states_copy[i] = v
    end

    table.sort(oxidation_states_copy)

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = oxidation_states_copy

    return obj
end

return OxidationStates
