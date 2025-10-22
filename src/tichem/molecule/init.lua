local Element = require("tichem.element")

---@class Molecule
---@field mass integer   -- molar mass of molecule
---@field length integer -- Number of elements in molecule
local Molecule = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        local self_data = DATA[self]
        if self_data ~= nil then
            local value = self_data[k]
            if value ~= nil then return value end
        end
        return Molecule[k]
    end,
    __newindex = function(self, k, v)
        error("Molecule records are immutable", 2)
    end,
    __eq = function(self, other)
        if rawequal(self, other) then return true end

        local self_data, other_data = DATA[self], DATA[other]

        if self_data == nil or other_data == nil then
            return false
        end

        if self_data.length ~= other_data.length then
            return false
        end

        for element, count in pairs(self_data) do
            if other_data[element] ~= count then
                return false
            end
        end

        return true
    end,
    __metatable = Molecule
}

---@param element_counts table<Element, integer> -- non empty table of Elements mapped to integers > 0
---@return Molecule
function Molecule:new(element_counts)
    assert(type(element_counts) == "table", "'element_counts' table expected")

    local length = 0
    local mass = 0
    local elements = {}

    for element, count in pairs(element_counts) do
        assert(getmetatable(element) == Element, "non Element 'element_counts' key")
        assert(
            type(count) == "number" and count > 0 and count == math.floor(count),
            "non positive integer 'element_counts' value: " .. tostring(count)
        )

        length = length + 1
        mass = mass + (element.mass * count)
        elements[element] = count
    end

    assert(length ~= 0, "non empty 'element_counts' table expected")

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = {
        length = length,
        mass = mass
    }

    return obj
end
