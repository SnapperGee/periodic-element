local Family = require("periodic-element.element.family")
local block_of_atomic_number = require("src.periodic-element.element.block")
local is_array = require("periodic-element.util.is_array")
local ElectronConfiguration = require("periodic-element.element.electron_configuration")
local OxidationStates = require("periodic-element.element.oxidation_states")

local standard_states = { Solid = true, Liquid = true, Gas = true }

--- Class for creating objects that can represent an elements of the periodic
--- table of elements.
---@class Element
---@field name   string      -- element name
---@field symbol string      -- 1-2 chars
---@field number integer     -- atomic number 1..97
---@field mass   number      -- atomic mass
---@field group  integer|nil -- nil if Block is f otherwise 1..18
---@field family string      -- group family
---@field period integer     -- 1..7
---@field block  Block
---@field oxidation_states OxidationStates
---@field electron_configuration ElectronConfiguration
---@field electronegativity number|nil -- Pauling Scale
---@field atomic_radius integer -- van der Waals
---@field ionization_energy number -- eV
---@field electron_affinity number|nil -- eV
---@field melting_point number -- kelvin
---@field boiling_point number|nil -- kelvin
---@field density number -- g/cm³
---@field standard_state "Solid"|"Liquid"|"Gas"
local Element = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {__metatable = Element}

function METATABLE:__index(k)
    local self_data = DATA[self]
    if self_data ~= nil then
        local value = self_data[k]
        if value ~= nil then return value end
    end
    return Element[k]
end

function METATABLE:__newindex(k, v)
    error("Element records are immutable", 2)
end

function METATABLE:__eq(other)
    if rawequal(self, other) then return true end
    local self_data, other_data = DATA[self], DATA[other]
    if self_data == nil or other_data == nil then
        return false
    end
    return self_data and other_data
        and self_data.name == other_data.name
        and self_data.symbol == other_data.symbol
        and self_data.number == other_data.number
        and self_data.mass == other_data.mass
        and self_data.group == other_data.group
        and self_data.family == other_data.family
        and self_data.period == other_data.period
        and self_data.block == other_data.block
        and self_data.oxidation_states == other_data.oxidation_states
        and self_data.electron_configuration == other_data.electron_configuration
        and self_data.electronegativity == other_data.electronegativity
        and self_data.atomic_radius == other_data.atomic_radius
        and self_data.ionization_energy == other_data.ionization_energy
        and self_data.ionization_energy == other_data.ionization_energy
        and self_data.electron_affinity == other_data.electron_affinity
        and self_data.melting_point == other_data.melting_point
        and self_data.boiling_point == other_data.boiling_point
        and self_data.density == other_data.density
        and self_data.standard_state == other_data.standard_state
end

function METATABLE:__lt(other)
    if rawequal(self, other) then return false end
    local self_data, other_data = DATA[self], DATA[other]
    if self_data == nil or other_data == nil then
        error("comparison with non-Element", 2)
    end
    return self_data.number < other_data.number
end

function METATABLE:__le(other)
    return not METATABLE.__lt(other, self)
end

function METATABLE:__tostring()

    local self_data = DATA[self]

    return string.format(
        "Element{name=\"%s\", symbol=\"%s\", number=%d, mass=%.3f, group=%s, period=%d, block='%s', oxidation_states={%s}, electron_configuration=\"%s\", electronegativity=%.2f, atomic_radius=%d, ionization_energy=%.3f, electron_affinity=%.3f, melting_point=%d, boiling_point=%d, density=%f, standard_state=\"%s\"}",
        self_data.name,
        self_data.symbol,
        self_data.number,
        self_data.mass,
        tostring(self_data.group),
        self_data.period,
        self_data.block,
        self_data.oxidation_states:formatted_string(),
        self_data.electron_configuration.canonical_string,
        self_data.electronegativity,
        self_data.atomic_radius,
        self_data.ionization_energy,
        self_data.electron_affinity,
        self_data.melting_point,
        self_data.boiling_point,
        self_data.density,
        self_data.standard_state
    )
end

---@class ElementOpts
---@field name string
---@field symbol string
---@field number integer
---@field mass number
---@field group integer|nil
---@field period integer
---@field oxidation_states OxidationStates|integer[]
---@field electron_configuration ElectronConfiguration
---@field electronegativity number -- Pauling Scale
---@field atomic_radius integer -- van der Waals
---@field ionization_energy number -- eV
---@field electron_affinity number -- eV
---@field melting_point number -- kelvin
---@field boiling_point number -- kelvin
---@field density number -- g/cm³
---@field standard_state "solid"|"liquid"|"gas"

--- Constructor for Element objects. Parameters are validated making sure
--- they're valid element properties according to this lua module. For instance
--- an atomic number can only be in the range [1, 118]. If any validation fails
--- an exception is thrown.
---@param opts ElementOpts
---@return Element
function Element.new(opts)

    assert(type(opts) == "table", "opts table required")

    assert(
        type(opts.name) == "string" and #opts.name > 0,
        string.format("non empty 'name' string expected but got: %s", tostring(opts.name))
    )

    local normalized_name = opts.name:sub(1,1):upper() .. opts.name:sub(2):lower()

    assert(
        type(opts.symbol) == "string" and #opts.symbol >= 1 and #opts.symbol <= 2,
        string.format("1-2 char 'symbol' string expected but got: %s", tostring(opts.symbol))
    )

    local normalized_symbol = opts.symbol:sub(1,1):upper() .. opts.symbol:sub(2):lower()

    assert(
        type(opts.number) == "number" and opts.number == math.floor(opts.number) and opts.number >= 1 and opts.number <= 118,
        string.format("'number' integer in [1, 97] expected but got: %s", tostring(opts.number))
    )

    assert(
        type(opts.mass) == "number" and opts.mass > 0,
        string.format("positive 'mass' number expected but got: %s", tostring(opts.mass))
    )

    local block = block_of_atomic_number(opts.number)

    assert(
        block ~= nil,
        string.format("'block' could not be determined from number: %d", opts.number)
    )

    assert(
        getmetatable(opts.oxidation_states) == OxidationStates
        or is_array(opts.oxidation_states, function(v) return type(v) == "number" and v == math.floor(v) end)
        and #opts.oxidation_states > 0,
        string.format("'oxidation_states' must be OxidationStates object or non empty integer array but got: %s", tostring(opts.oxidation_states))
    )

    local oxidation_states

    if getmetatable(opts.oxidation_states) == OxidationStates then
        oxidation_states = opts.oxidation_states
    else
        oxidation_states = OxidationStates.new(opts.oxidation_states)
    end

    if block == "f" then
        assert(
            opts.group == nil,
            string.format("f-block elements have no IUPAC group: block=%s | group=%s", tostring(block), tostring(opts.group))
        )
    else
        assert(
            type(opts.group) == "number" and opts.group == math.floor(opts.group) and opts.group >= 1 and opts.group <= 18,
            string.format("'group' integer in [1,18] for s/p/d-block expected but got: block=%s | group=%s", tostring(block), tostring(opts.group))
        )
    end

    assert(
        type(opts.period) == "number" and opts.period == math.floor(opts.period) and opts.period >= 1 and opts.period <= 7,
        string.format("'period' integer in [1,7] expected but got: %s", tostring(opts.period))
    )

    assert(
        getmetatable(opts.electron_configuration) == ElectronConfiguration,
        string.format("'electron_configuration' with metatable of type ElectronConfiguration but instead got: %s", tostring(opts.electron_configuration))
    )

    local family = Family(opts.number)

    assert(
        family ~= nil,
        string.format("'family' for atomic number could not be determined: %d", opts.number)
    )

    assert(
        type(opts.electronegativity) == "number" and opts.electronegativity >= 0,
        string.format("non negative 'electronegativity' number expected but got: %s", tostring(opts.electronegativity))
    )

    assert(
        type(opts.atomic_radius) == "number" and opts.atomic_radius == math.floor(opts.atomic_radius) and opts.atomic_radius > 0,
        string.format("'opts.atomic_radius' integer greater than 0 expected but got: %s", tostring(opts.atomic_radius))
    )

    assert(
        type(opts.ionization_energy) == "number" and opts.ionization_energy > 0,
        string.format("'ionization_energy' number greater than 0 expected but got: %s", tostring(opts.ionization_energy))
    )

    assert(
        type(opts.electron_affinity) == "number" and opts.electron_affinity > 0,
        string.format("'electron_affinity' number greater than 0 (or nil) expected but got: %s", tostring(opts.electron_affinity))
    )

    assert(
        type(opts.melting_point) == "number" and opts.melting_point >= 0,
        string.format("non negative 'melting_point' number expected but got: %s", tostring(opts.melting_point))
    )

    assert(
        type(opts.boiling_point) == "number" and opts.boiling_point > 0,
        string.format("'boiling_point' number greater than melting point (or nil) expected but got: melting_point=%s | boiling_point=%s", tostring(opts.melting_point), tostring(opts.boiling_point))
    )

    assert(
        type(opts.density) == "number" and opts.density > 0,
        string.format("'density' number greater than 0 expected but got: %s", tostring(opts.density))
    )

    assert(
        type(opts.standard_state) == "string" and #opts.standard_state > 0,
        string.format("non empty 'standard_state' string expected but got: %s", tostring(opts.standard_state))
    )

    local normalized_standard_state = opts.standard_state:sub(1,1):upper() .. opts.standard_state:sub(2):lower()

    assert(
        standard_states[normalized_standard_state],
        string.format("expected 'standard_state' value of \"solid\", \"liquid\", or \"gas\" but got: \"%s\"", tostring(opts.standard_state))
    )

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = {
        name = normalized_name,
        symbol = normalized_symbol,
        number = opts.number,
        mass = opts.mass,
        group = opts.group,
        family = family,
        period = opts.period,
        block = block,
        oxidation_states = oxidation_states,
        electron_configuration = opts.electron_configuration,
        electronegativity = opts.electronegativity,
        atomic_radius = opts.atomic_radius,
        ionization_energy = opts.ionization_energy,
        electron_affinity = opts.electron_affinity,
        melting_point = opts.melting_point,
        boiling_point = opts.boiling_point,
        density = opts.density,
        standard_state = normalized_standard_state
    }

    return obj
end

---@class PartialElement: Element
---@field electronegativity number|nil -- Pauling Scale
---@field electron_affinity number|nil -- eV
---@field boiling_point number|nil -- kelvin

---@class PartialElementOpts: ElementOpts
---@field electronegativity number|nil -- Pauling Scale
---@field atomic_radius integer -- van der Waals
---@field ionization_energy number -- eV
---@field electron_affinity number|nil -- eV
---@field melting_point number -- kelvin
---@field boiling_point number|nil -- kelvin
---@field density number -- g/cm³

--- Constructor for Element objects. Parameters are validated making sure
--- they're valid element properties according to this lua module. For instance
--- an atomic number can only be in the range [1, 118]. If any validation fails
--- an exception is thrown.
---@param opts PartialElementOpts
---@return PartialElement
function Element.partial(opts)

    assert(type(opts) == "table", "opts table required")

    assert(
        type(opts.name) == "string" and #opts.name > 0,
        string.format("non empty 'name' string expected but got: %s", tostring(opts.name))
    )

    local normalized_name = opts.name:sub(1,1):upper() .. opts.name:sub(2):lower()

    assert(
        type(opts.symbol) == "string" and #opts.symbol >= 1 and #opts.symbol <= 2,
        string.format("1-2 char 'symbol' string expected but got: %s", tostring(opts.symbol))
    )

    local normalized_symbol = opts.symbol:sub(1,1):upper() .. opts.symbol:sub(2):lower()

    assert(
        type(opts.number) == "number" and opts.number == math.floor(opts.number) and opts.number >= 1 and opts.number <= 118,
        string.format("'number' integer in [1, 97] expected but got: %s", tostring(opts.number))
    )

    assert(
        type(opts.mass) == "number" and opts.mass > 0,
        string.format("positive 'mass' number expected but got: %s", tostring(opts.mass))
    )

    local block = block_of_atomic_number(opts.number)

    assert(
        block ~= nil,
        string.format("'block' could not be determined from number: %d", opts.number)
    )

    assert(
        getmetatable(opts.oxidation_states) == OxidationStates
        or is_array(opts.oxidation_states, function(v) return type(v) == "number" and v == math.floor(v) end)
        and #opts.oxidation_states > 0,
        string.format("'oxidation_states' must be OxidationStates object or non empty integer array but got: %s", tostring(opts.oxidation_states))
    )

    local oxidation_states

    if getmetatable(opts.oxidation_states) == OxidationStates then
        oxidation_states = opts.oxidation_states
    else
        oxidation_states = OxidationStates.new(opts.oxidation_states)
    end

    if block == "f" then
        assert(
            opts.group == nil,
            string.format("f-block elements have no IUPAC group: block=%s | group=%s", tostring(block), tostring(opts.group))
        )
    else
        assert(
            type(opts.group) == "number" and opts.group == math.floor(opts.group) and opts.group >= 1 and opts.group <= 18,
            string.format("'group' integer in [1,18] for s/p/d-block expected but got: block=%s | group=%s", tostring(block), tostring(opts.group))
        )
    end

    assert(
        type(opts.period) == "number" and opts.period == math.floor(opts.period) and opts.period >= 1 and opts.period <= 7,
        string.format("'period' integer in [1,7] expected but got: %s", tostring(opts.period))
    )

    assert(
        getmetatable(opts.electron_configuration) == ElectronConfiguration,
        string.format("'electron_configuration' with metatable of type ElectronConfiguration but instead got: %s", tostring(opts.electron_configuration))
    )

    local family = Family(opts.number)

    assert(
        family ~= nil,
        string.format("'family' for atomic number could not be determined: %d", opts.number)
    )

    assert(
        type(opts.electronegativity) == "number" and opts.electronegativity >= 0,
        string.format("non negative 'electronegativity' number expected but got: %s", tostring(opts.electronegativity))
    )

    assert(
        type(opts.atomic_radius) == "number" and opts.atomic_radius == math.floor(opts.atomic_radius) and opts.atomic_radius > 0,
        string.format("'opts.atomic_radius' integer greater than 0 expected but got: %s", tostring(opts.atomic_radius))
    )

    assert(
        type(opts.ionization_energy) == "number" and opts.ionization_energy > 0,
        string.format("'ionization_energy' number greater than 0 expected but got: %s", tostring(opts.ionization_energy))
    )

    assert(
        opts.electron_affinity == nil or type(opts.electron_affinity) == "number" and opts.electron_affinity > 0,
        string.format("'electron_affinity' number greater than 0 (or nil) expected but got: %s", tostring(opts.electron_affinity))
    )

    assert(
        type(opts.melting_point) == "number" and opts.melting_point >= 0,
        string.format("non negative 'melting_point' number expected but got: %s", tostring(opts.melting_point))
    )

    assert(
        opts.boiling_point == nil or type(opts.boiling_point) == "number" and opts.boiling_point > 0,
        string.format("'boiling_point' number greater than melting point (or nil) expected but got: melting_point=%s | boiling_point=%s", tostring(opts.melting_point), tostring(opts.boiling_point))
    )

    assert(
        type(opts.density) == "number" and opts.density > 0,
        string.format("'density' number greater than 0 expected but got: %s", tostring(opts.density))
    )

    assert(
        type(opts.standard_state) == "string" and #opts.standard_state > 0,
        string.format("non empty 'standard_state' string expected but got: %s", tostring(opts.standard_state))
    )

    local normalized_standard_state = opts.standard_state:sub(1,1):upper() .. opts.standard_state:sub(2):lower()

    assert(
        standard_states[normalized_standard_state],
        string.format("expected 'standard_state' value of \"solid\", \"liquid\", or \"gas\" but got: \"%s\"", tostring(opts.standard_state))
    )

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = {
        name = normalized_name,
        symbol = normalized_symbol,
        number = opts.number,
        mass = opts.mass,
        group = opts.group,
        family = family,
        period = opts.period,
        block = block,
        oxidation_states = oxidation_states,
        electron_configuration = opts.electron_configuration,
        electronegativity = opts.electronegativity,
        atomic_radius = opts.atomic_radius,
        ionization_energy = opts.ionization_energy,
        electron_affinity = opts.electron_affinity,
        melting_point = opts.melting_point,
        boiling_point = opts.boiling_point,
        density = opts.density,
        standard_state = normalized_standard_state
    }

    return obj
end

return Element
