local Actinide = require("periodic-element.elements.actinide")
local AlkaliMetal = require("periodic-element.elements.alkali_metal")
local AlkalineEarth = require("periodic-element.elements.alkaline_earth_metal")
local Halogen = require("periodic-element.elements.halogen")
local Lanthanide = require("periodic-element.elements.lanthanide")
local Metalloid = require("periodic-element.elements.metalloid")
local NobleGas = require("periodic-element.elements.noble_gas")
local Nonmetal = require("periodic-element.elements.nonmetal")
local PostTransitionMetal = require("periodic-element.elements.post_transition_metal")
local TransitionMetal = require("periodic-element.elements.transition_metal")
local ElementSet = require("periodic-element.elements.element_set")

local elements_accumulator = {}

local element_sets = {
    Actinide, AlkaliMetal, AlkalineEarth, Halogen, Lanthanide, Metalloid, NobleGas,
    Nonmetal, PostTransitionMetal, TransitionMetal
}

for element_set_index = 1, #element_sets do
    local element_set = element_sets[element_set_index]
    for _, value in element_set:ipairs() do
        elements_accumulator[#elements_accumulator + 1] = value
    end
end

local elements_set = ElementSet.new(elements_accumulator)

return elements_set
