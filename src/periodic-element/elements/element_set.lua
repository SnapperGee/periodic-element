local Element = require("periodic-element.element")
local is_array = require("periodic-element.util.is_array")

---@class ElementSet
---@field _name string|nil
local ElementSet = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        local self_data = DATA[self]

        if type(k) == "number" then
            return self_data.atomic_number_index[k]
        end

        local class_member = ElementSet[k]

        if class_member ~= nil then
            return class_member
        end

        if type(k) == "string" then
            local normalized_symbol_or_name = k:sub(1, 1):upper() .. k:sub(2):lower()

            return self_data.name_index[normalized_symbol_or_name]
                or self_data.symbol_index[normalized_symbol_or_name]
        end
    end,
    __newindex = function(self, k, v)
        error("ElementSet objects are immutable", 2)
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
---@param name? string|nil
---@return ElementSet
function ElementSet.new(elements, name)

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
        name_index = name_index,
        _name = name
    }

    return obj
end

---@return integer
function ElementSet:length()
    return #DATA[self].elements
end

---@return string
function ElementSet:name()
    return DATA[self]._name or ""
end

---@generic T
---@param key? (fun(element: Element): T)|nil
---@return fun(): T?, Element?
function ElementSet:pairs(key)
    key = key or function(element) return element.number end
    local elements = DATA[self].elements
    local i = 0
    return function()
        i = i + 1
        if i <= #elements then return key(elements[i]), elements[i] end
        return nil, nil
    end
end

return ElementSet
