---@class Element
---@field name   string     -- element name
---@field symbol string     -- 1-2 chars
---@field number integer    -- atomic number
---@field mass   number     -- atomic mass
---@field period number     -- 1..7
---@field group  number|nil -- nil or 1..18
local Element = {}

Element.__index = Element

---@class ElementInit
---@field name   string
---@field symbol string
---@field number integer
---@field mass   number
---@field period number
---@field group  number|nil

---@param opts ElementInit
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
        type(opts.number) == "number" and opts.number >= 1 and opts.number <= 118 and opts.number % 1 == 0,
        string.format("'number' integer between 1 and 118 expected but got: %s", tostring(opts.number))
    )

    assert(
        type(opts.mass) == "number" and opts.mass > 0,
        string.format("positive 'mass' integer expected but got: %s", tostring(opts.mass))
    )

    assert(
        type(opts.period) == "number" and opts.period >= 1 and opts.period <= 7 and opts.period % 1 == 0,
        string.format("'period' integer between 1 and 7 expected but got: %s", tostring(opts.period))
    )

    assert(
        opts.group == nil or type(opts.group) == "number" and opts.group >= 1 and opts.group <= 18 and opts.period % 1 == 0,
        string.format("'group' of nil or integer between 1 and 18 expected but got: %s", tostring(opts.group))
    )

    local obj = setmetatable({
        name = opts.name,
        symbol = opts.symbol,
        number = opts.number,
        mass = opts.mass,
        period = opts.period,
        group = opts.group
    }, self)

    return obj
end

return Element
