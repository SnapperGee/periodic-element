local Element = require("element")

local function is_array_of_elements(arg)
    if type(arg) ~= "table" then return false end

    local n = 0

    for _ in ipairs(arg) do n = n + 1 end

    if n == 0 then return false end

    for k, v in pairs(arg) do
        if type(k) ~= "number" or k % 1 ~= 0 or k < 1 or k > n or type(v) ~= "table" or getmetatable(v) ~= Element then
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
