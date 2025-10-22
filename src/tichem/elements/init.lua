local Element = require("tichem.element")
local is_array = require("tichem.util.is_array")

---@class Elements
local Elements = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        return Elements[k]
    end,
    __newindex = function(self, k, v)
        error("Elements records are immutable", 2)
    end,
    __metatable = Elements
}

---@return Elements
function Elements:new(elements)
end

return Elements
