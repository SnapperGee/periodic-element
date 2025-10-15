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

        return self.atomic_number_index[atomic_number_or_symbol_or_name]
    end

    if type(atomic_number_or_symbol_or_name) == "string" then
        assert(
            #atomic_number_or_symbol_or_name ~= 0,
            "non empty symbol or name string required"
        )

        local normalized_symbol_or_name = atomic_number_or_symbol_or_name:sub(1,1):upper() .. atomic_number_or_symbol_or_name:sub(2):lower()

        if #normalized_symbol_or_name <= 2 then
            return self.symbol_index[normalized_symbol_or_name]
        else
            return self.name_index[normalized_symbol_or_name]
        end
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

    local atomic_number_index = {}
    local symbol_index = {}
    local name_index = {}

    for _, element in ipairs(elements) do
        atomic_number_index[element.number] = element
    end

    for _, element in ipairs(elements) do
        symbol_index[element.symbol] = element
    end

    for _, element in ipairs(elements) do
        name_index[element.name] = element
    end

    return setmetatable({
        atomic_number_index = atomic_number_index,
        symbol_index = symbol_index,
        name_index = name_index
    }, self)
end

return Elements
