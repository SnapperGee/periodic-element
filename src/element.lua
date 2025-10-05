---@class Element
---@field name   string
---@field symbol string   -- 1–2 chars
---@field number integer  -- atomic number
---@field mass   number   -- atomic mass
local Element = {}

Element.__index = Element

---@class ElementInit
---@field name   string
---@field symbol string
---@field number integer
---@field mass   number

---@param opts ElementInit
---@return Element
function Element:new(opts)

    assert(type(opts) == "table", "opts table required")

    assert(
        type(opts.name) == "string" and #opts.name > 0,
        "non empty 'name' string is required"
    )

    assert(
        type(opts.symbol) == "string" and #opts.symbol >= 1 and #opts.symbol <= 2,
        "1-2 char 'symbol' string is required"
    )

    assert(
        type(opts.number) == "number" and opts.number > 0,
        "positive 'number' atomic number is required"
    )

    assert(
        type(opts.mass) == "number" and opts.mass > 0,
        "positive 'mass' number is required"
    )

    local obj = setmetatable({
        name = opts.name,
        symbol = opts.symbol,
        number = opts.number,
        mass = opts.mass
    }, self)

    return obj
end

function Element:__tostring()
  return ("Element{name=%q, symbol=%q, number=%s, mass=%s}")
    :format(tostring(self.name), tostring(self.symbol),
            tostring(self.number), tostring(self.mass))
end

return Element
