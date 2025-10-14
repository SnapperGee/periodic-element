local Element = require("element")

local function is_array_of_elements(arg)
    if type(arg) ~= "table" or arg[1] == nil then return false end

    for k, v in pairs(arg) do
        if type(k) ~= "number"
            or k < 1
            or k % 1 ~= 0
            or type(v) ~= "table"
            or getmetatable(v) ~= Element
            or (k ~= 1 and rawget(arg, k-1) == nil) then
            return false
        end
    end

    return true
end

local Elements = {}

Elements.__index = Elements

function Elements.__newindex()
    error("Elements records are immutable", 2)
end

-- TODO: Make immutable
function Elements:new(elements)

    assert(type(elements) == "table", "elements table required")

    assert(
        is_array_of_elements(elements),
        string.format("expected non empty 'elements' array of Elements but got: %s", tostring(opts.subshell_occupancy))
    )

    return setmetatable(elements, self)
end
