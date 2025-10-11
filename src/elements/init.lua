local Elements = {}

Elements.__index = Elements

function Elements.__newindex()
    error("Elements records are immutable", 2)
end

function Elements:new(opts)

    assert(type(opts) == "table", "opts table required")

    return setmetatable({}, self)
end
