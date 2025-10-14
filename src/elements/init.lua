local Element = require("element")
local is_array = require("util.is_array")

local Elements = {}

Elements.__index = Elements

function Elements.__newindex()
    error("Elements records are immutable", 2)
end

---@param atomic_number_or_symbol_or_name number|string
---@return Element|nil
function Elements:__call(atomic_number_or_symbol_or_name)
    if type(atomic_number_or_symbol_or_name) == "number" then
        assert(
            atomic_number_or_symbol_or_name == math.floor(atomic_number_or_symbol_or_name) and atomic_number_or_symbol_or_name >= 1 and atomic_number_or_symbol_or_name <= 118,
            "Atomic number integer in [1, 118] expected but got: " .. tostring(atomic_number_or_symbol_or_name)
        )

        return self[atomic_number_or_symbol_or_name]
    end

    if type(atomic_number_or_symbol_or_name) == "string" then
        assert(
            #atomic_number_or_symbol_or_name ~= 0,
            "non empty symbol or name string required"
        )

        local normalized_symbol_or_name = atomic_number_or_symbol_or_name:sub(1,1):upper() .. atomic_number_or_symbol_or_name:sub(2):lower()

        if #normalized_symbol_or_name <= 2 then
            for _, element in pairs(self) do
                if element.symbol == normalized_symbol_or_name then
                    return element
                end
            end
        else
            for _, element in pairs(self) do
                if element.name == normalized_symbol_or_name then
                    return element
                end
            end
        end

        return nil
    end

    error("element string symbol or name or integer atomic number expected but got: " .. tostring(type(atomic_number_or_symbol_or_name)), 2)
end

-- TODO: Make immutable
function Elements:new(elements)

    assert(type(elements) == "table", "elements table required")

    assert(
        is_array(elements, Element),
        "non empty 'elements' array of Elements required"
    )

    local elements_table = {}

    for _, element in ipairs(elements) do
        elements_table[element.number] = element
    end

    return setmetatable(elements_table, self)
end

return Elements
