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
local ElementArray = require("tichem.elements.element_array")

local elements = {}

local element_arrays = {
    Actinide, AlkaliMetal, AlkalineEarth, Halogen, Lanthanide, Metalloid, NobleGas,
    Nonmetal, PostTransitionMetal, TransitionMetal
}

for element_array_index = 1, #element_arrays do
    local element_array = element_arrays[element_array_index]
    for element_index = 1, element_array:length() do
        elements[#elements + 1] = element_array[element_index]
    end
end

local all_elements_array = ElementArray:new(elements)

return all_elements_array
