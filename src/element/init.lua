local Family = require("element.family")
local ElectronConfiguration = require("element.electron_configuration")

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
---@field electron_configuration ElectronConfiguration
local Element = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        local d = DATA[self]
        return d and d[k] or nil
    end,
    __newindex = function(self, k, v)
        error("Element records are immutable", 2)
    end,
    __eq = function(self, other)
        if rawequal(self, other) then return true end
        local self_data, other_data = DATA[self], DATA[other]
        return self_data and other_data and self_data.number == other_data.number
    end,
    __lt = function(self, other)
        if rawequal(self, other) then return false end
        local self_data, other_data = DATA[self], DATA[other]
        return self_data.number < other_data.number
    end,
    __le = function(self, other)
        return not METATABLE.__lt(other, self)
    end,
    __metatable = Element
}

---@class ElementInitOpts
---@field name   string
---@field symbol string
---@field number integer
---@field mass   number
---@field group  integer|nil
---@field period integer
---@field block  Block
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
        electron_configuration = opts.electron_configuration
    }

    return obj
end

return Element
