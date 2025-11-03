local Family = require("periodic-element.element.family")
local is_array = require("periodic-element.util.is_array")
local ElectronConfiguration = require("periodic-element.element.electron_configuration")
local OxidationStates = require("periodic-element.element.oxidation_states")

---@alias Block '"s"'|'"p"'|'"d"'|'"f"'

local VALID_BLOCK = { s = true, p = true, d = true, f = true }

---@class Element
---@field name   string      -- element name
---@field symbol string      -- 1-2 chars
---@field number integer     -- atomic number 1..118
---@field mass   number      -- atomic mass
---@field group  integer|nil -- nil if Block is f otherwise 1..18
---@field family string      -- group family
---@field period integer     -- 1..7
---@field block  Block
---@field oxidation_states OxidationStates
---@field electron_configuration ElectronConfiguration
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
        "Element{name=\"%s\", symbol=\"%s\", number=%d, mass=%.3f, group=%s, period=%d, block='%s', oxidation_states={%s}, electron_configuration=\"%s\"}",
        self_data.name,
        self_data.symbol,
        self_data.number,
        self_data.mass,
        tostring(self_data.group),
        self_data.period,
        self_data.block,
        self_data.oxidation_states:formatted_string(),
        self_data.electron_configuration.canonical_string
    )
end

---@class ElementInitOpts
---@field name   string
---@field symbol string
---@field number integer
---@field mass   number
---@field group  integer|nil
---@field period integer
---@field block  Block
---@field oxidation_states OxidationStates|integer[]
---@field electron_configuration ElectronConfiguration

---@param opts ElementInitOpts
---@return Element
function Element:new(opts)

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
        string.format("'number' integer in [1, 118] expected but got: %s", tostring(opts.number))
    )

    assert(
        type(opts.mass) == "number" and opts.mass > 0,
        string.format("positive 'mass' number expected but got: %s", tostring(opts.mass))
    )

    assert(
        type(opts.block) == "string" and #opts.block == 1,
        string.format("'block' must be single character but got: %s", tostring(opts.block))
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
        oxidation_states = OxidationStates:new(opts.oxidation_states)
    end

    local normalized_block = opts.block:lower()

    assert(
        VALID_BLOCK[normalized_block],
        string.format("'block' must be one of 's','p','d','f' but got: %s", tostring(opts.block))
    )

    if normalized_block == "f" then
        assert(
            opts.group == nil,
            string.format("f-block elements have no IUPAC group: block=%s | group=%s", tostring(opts.block), tostring(opts.group))
        )
    else
        assert(
            type(opts.group) == "number" and opts.group == math.floor(opts.group) and opts.group >= 1 and opts.group <= 18,
            string.format("'group' integer in [1,18] for s/p/d-block expected but got: block=%s | group=%s", tostring(opts.block), tostring(opts.group))
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
        family ~= "Unknown",
        string.format("'family' for atomic number could not be determined: %d", opts.number)
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
        block = normalized_block,
        oxidation_states = oxidation_states,
        electron_configuration = opts.electron_configuration
    }

    return obj
end

return Element
