---@class Molecule
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
