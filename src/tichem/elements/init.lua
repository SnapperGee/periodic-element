local Actinide = require("tichem.elements.actinide")
local AlkaliMetal = require("tichem.elements.alkali_metal")
local AlkalineEarth = require("tichem.elements.alkaline_earth")
local Halogen = require("tichem.elements.halogen")
local Lanthanide = require("tichem.elements.lanthanide")
local Metalloid = require("tichem.elements.metalloid")
local NobleGas = require("tichem.elements.noble_gas")
local Nonmetal = require("tichem.elements.nonmetal")
local PostTransitionMetal = require("tichem.elements.post_transition_metal")
local TransitionMetal = require("tichem.elements.transition_metal")

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
