local Actinide = require("periodic-element.elements.actinide")
local AlkaliMetal = require("periodic-element.elements.alkali_metal")
local AlkalineEarth = require("periodic-element.elements.alkaline_earth")
local Halogen = require("periodic-element.elements.halogen")
local Lanthanide = require("periodic-element.elements.lanthanide")
local Metalloid = require("periodic-element.elements.metalloid")
local NobleGas = require("periodic-element.elements.noble_gas")
local Nonmetal = require("periodic-element.elements.nonmetal")
local PostTransitionMetal = require("periodic-element.elements.post_transition_metal")
local TransitionMetal = require("periodic-element.elements.transition_metal")
local ElementSet = require("src.periodic-element.elements.element_set")

local elements_collector = {}

local element_arrays = {
    Actinide, AlkaliMetal, AlkalineEarth, Halogen, Lanthanide, Metalloid, NobleGas,
    Nonmetal, PostTransitionMetal, TransitionMetal
}

for element_array_index = 1, #element_arrays do
    local element_array = element_arrays[element_array_index]
    for element_index = 1, element_array:length() do
        elements_collector[#elements_collector + 1] = element_array[element_index]
    end
end

local elements_array = ElementSet.new(elements_collector)

return elements_array
