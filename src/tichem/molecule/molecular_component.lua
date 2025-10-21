local Element = require("tichem.element")

---@class MolecularComponent
---@field element Element
---@field count   integer -- number of element atoms
local MolecularComponent = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        local self_data = DATA[self]
        if self_data ~= nil then
            local value = self_data[k]
            if value ~= nil then return value end
        end
        return MolecularComponent[k]
    end,
    __newindex = function(self, k, v)
        error("MolecularComponent records are immutable", 2)
    end,
    __eq = function(self, other)
        if rawequal(self, other) then return true end

        local self_data, other_data = DATA[self], DATA[other]

        if self_data == nil or other_data == nil then
            return false
        end

        return self_data.count == other_data.count
            and self_data.element == other_data.element
    end,
    __tostring = function(self)
        local self_data = DATA[self]
        return string.format("MolecularComponent{element=%s, count=%d}", self_data.element.symbol, self_data.count)
    end,
    __metatable = MolecularComponent
}

---@param element Element
---@param count?  integer|nil -- number of elements. Must be positive (>0) integer. Defaults to 1.
---@return MolecularComponent
function MolecularComponent:new(element, count)
    assert(getmetatable(element) == Element, "Invalid Element table")
    assert(
        count == nil or type(count) == "number" and count == math.floor(count) and count > 0,
        "expected nil or positive integer for count but got: ".. tostring(count)
    )

    count = count or 1

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = {
        element = element,
        count = count
    }

    return obj
end

return MolecularComponent
