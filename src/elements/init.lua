local Element = require("element")
local is_array = require("util.is_array")

local Elements = {}

Elements.__index = Elements

function Elements.__newindex()
    error("Elements records are immutable", 2)
end

-- TODO: Make immutable
function Elements:new(elements)

    assert(type(elements) == "table", "elements table required")

    assert(
        is_array(elements, Element),
        string.format("expected non empty 'elements' array of Elements but got: %s", tostring(opts.subshell_occupancy))
    )

    return setmetatable(elements, self)
end
