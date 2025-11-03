local Element = require("periodic-element.element")
local is_array = require("periodic-element.util.is_array")

---@class ElementSet
local ElementSet = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        if type(k) == "number" then
            local elements = DATA[self].elements
            return elements[k]
        end
        return ElementSet[k]
    end,
    __newindex = function(self, k, v)
        error("ElementSet objects are immutable", 2)
    end,
    __call = function(self, atomic_number_or_symbol_or_name)
        local self_data = DATA[self]

        if type(atomic_number_or_symbol_or_name) == "number" then
            assert(
                atomic_number_or_symbol_or_name == math.floor(atomic_number_or_symbol_or_name) and atomic_number_or_symbol_or_name >= 1 and atomic_number_or_symbol_or_name <= 118,
                "Atomic number integer in [1, 118] expected but got: " .. tostring(atomic_number_or_symbol_or_name)
            )

            return self_data.atomic_number_index[atomic_number_or_symbol_or_name]
        end

        if type(atomic_number_or_symbol_or_name) == "string" then
            assert(
                #atomic_number_or_symbol_or_name ~= 0,
                "non empty symbol or name string required"
            )

            local normalized_symbol_or_name = atomic_number_or_symbol_or_name:sub(1,1):upper() .. atomic_number_or_symbol_or_name:sub(2):lower()

            if #normalized_symbol_or_name <= 2 then
                return self_data.symbol_index[normalized_symbol_or_name]
            else
                return self_data.name_index[normalized_symbol_or_name]
            end
        end

        error("element string symbol or name or integer atomic number expected but got: " .. tostring(type(atomic_number_or_symbol_or_name)), 2)
    end,
    __tostring = function(self)

        local elements = DATA[self].elements

        local element_symbols_string_parts = {}

        for i = 1, #elements do
            element_symbols_string_parts[#element_symbols_string_parts + 1] = elements[i].symbol
        end

        return string.format("ElementSet{%s}", table.concat(element_symbols_string_parts, ", "))
    end,
    __metatable = ElementSet
}

---@param elements Element[]
---@return ElementSet
function ElementSet:new(elements)

    assert(type(elements) == "table", "elements table required")

    assert(
        is_array(elements, Element),
        "ElementSet: non empty 'elements' array required"
    )

    local elements_copy = {}
    local atomic_number_index = {}
    local symbol_index = {}
    local name_index = {}

    for i = 1, #elements do
        local element = elements[i]

        local by_atomic_number = atomic_number_index[element.number]
        local by_symbol = symbol_index[element.symbol]
        local by_name = name_index[element.name]

        if (by_atomic_number and by_atomic_number == element)
            or (by_symbol and by_symbol == element)
            or (by_name and by_name == element) then
            -- skip silently
        else
            assert(
                (not by_atomic_number or by_atomic_number == element)
                and (not by_symbol or by_symbol == element)
                and (not by_name or by_name == element),
                string.format("ElementSet: key collision for %s", tostring(element))
            )

            -- Case 3: first time we see this element
            elements_copy[#elements_copy + 1] = element
            atomic_number_index[element.number] = element
            symbol_index[element.symbol] = element
            name_index[element.name] = element
        end
    end

    table.sort(elements_copy)

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = {
        elements = elements_copy,
        atomic_number_index = atomic_number_index,
        symbol_index = symbol_index,
        name_index = name_index
    }

    return obj
end

---@return integer
function ElementSet:length()
    return #DATA[self].elements
end

---@return fun(): integer?, Element?
function ElementSet:ipairs()
    local elements = DATA[self].elements
    local i = 0
    return function()
        i = i + 1
        if i <= #elements then return i, elements[i] end
        return nil, nil
    end
end

return ElementSet
