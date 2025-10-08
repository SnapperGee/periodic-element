---@alias Block '"s"'|'"p"'|'"d"'|'"f"'

local VALID_BLOCK = { s = true, p = true, d = true, f = true }

---@class Element
---@field name   string      -- element name
---@field symbol string      -- 1-2 chars
---@field number integer     -- atomic number
---@field mass   number      -- atomic mass
---@field group  integer|nil -- nil if Block is f otherwise 1..18
---@field period integer     -- 1..7
---@field block  Block
local Element = {}

Element.__index = Element

function Element.__newindex()
    error("Element records are immutable", 2)
end

function Element.__eq(a, b)
    return a.number == b.number
end

function Element.__lt(a, b)
    return a.number < b.number
end

function Element.__le(a, b)
    return not Element.__lt(b, a)
end

---@class ElementInitOpts
---@field name   string
---@field symbol string
---@field number integer
---@field mass   number
---@field group  integer|nil
---@field period integer
---@field block  Block

-- TODO: Make immutable
---@param opts ElementInitOpts
---@return Element
function Element:new(opts)

    assert(type(opts) == "table", "opts table required")

    assert(
        type(opts.name) == "string" and #opts.name > 0,
        string.format("non empty 'name' string expected but got: %s", tostring(opts.name))
    )

    assert(
        type(opts.symbol) == "string" and #opts.symbol >= 1 and #opts.symbol <= 2,
        string.format("1-2 char 'symbol' string expected but got: %s", tostring(opts.symbol))
    )

    assert(
        type(opts.number) == "number" and opts.number % 1 == 0 and opts.number >= 1 and opts.number <= 118,
        string.format("'number' integer in [1, 118] expected but got: %s", tostring(opts.number))
    )

    assert(
        type(opts.mass) == "number" and opts.mass > 0,
        string.format("positive 'mass' integer expected but got: %s", tostring(opts.mass))
    )

    assert(
        type(opts.block) == "string" and VALID_BLOCK[opts.block],
        string.format("'block' must be one of 's','p','d','f' but got: %s", tostring(opts.block))
    )

    if opts.block == "f" then
        assert(
            opts.group == nil,
            string.format("f-block elements have no IUPAC group: block=%s | group=%s", tostring(opts.block), tostring(opts.group))
        )
    else
        assert(
            type(opts.group) == "number" and opts.group % 1 == 0 and opts.group >= 1 and opts.group <= 18,
            string.format("'group' integer in [1,18] for s/p/d-block expected but got: block=%s | group=%s", tostring(opts.block), tostring(opts.group))
        )
    end

    assert(
        type(opts.period) == "number" and opts.period % 1 == 0 and opts.period >= 1 and opts.period <= 7,
        string.format("'period' integer in [1,7] expected but got: %s", tostring(opts.period))
    )

    local obj = setmetatable({
        name = opts.name,
        symbol = opts.symbol,
        number = opts.number,
        mass = opts.mass,
        group = opts.group,
        period = opts.period,
        block = opts.block
    }, self)

    return obj
end

return Element
