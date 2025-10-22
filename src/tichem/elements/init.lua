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
local ElementCollection = require("tichem.elements.element_collection")

local elements = {}

local element_collections = {
    Actinide, AlkaliMetal, AlkalineEarth, Halogen, Lanthanide, Metalloid, NobleGas,
    Nonmetal, PostTransitionMetal, TransitionMetal
}

for elements_index = 1, #element_collections do
    local element_collection = element_collections[elements_index]
    for element_index, element in element_collection:ipairs() do
        elements[#elements + 1] = element
    end
end

local all_elements_collection = ElementCollection:new(elements)

return all_elements_collection
