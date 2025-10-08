local SubshellOccupancy = require("src.subshell_occupancy")

local function is_array_of_subshell_occupancies(arg)
    if type(arg) ~= "table" then return false end

    local n = 0

    for _ in ipairs(arg) do n = n + 1 end

    if n == 0 then return false end

    for k, v in pairs(arg) do
        if type(k) ~= "number" or k % 1 ~= 0 or k < 1 or k > n or type(v) ~= "table" or getmetatable(v) ~= SubshellOccupancy then
            return false
        end
    end

    return true
end

local NOBLE_GAS_SYMBOLS = { He = true, Ne = true, Ar = true, Kr = true, Xe = true, Rn = true, Og = true }
local NOBLE_GAS_RANK = { He = 0, Ne = 1, Ar = 2, Kr = 3, Xe = 4, Rn = 5, Og = 6 }

---@class ElectronConfiguration
---@field core string|nil    -- noble-gas symbol like "He","Ne","Ar","Kr","Xe","Rn", "Og"
---@field subshell_occupancy SubshellOccupancy[] -- ordered list as written (keep authoring order)
local ElectronConfiguration = {}

ElectronConfiguration.__index = ElectronConfiguration

function ElectronConfiguration.__newindex()
    error("ElectronConfiguration records are immutable", 2)
end

function ElectronConfiguration.__eq(a, b)
    return rawequal(a,b)
        or a.core == b.core
        and a.subshell_occupancy == b.subshell_occupancy
end

function ElectronConfiguration.__lt(a, b)
    if rawequal(a, b) then return false end

    local ra = a.core and NOBLE_GAS_RANK[a.core] or -1
    local rb = b.core and NOBLE_GAS_RANK[b.core] or -1
    if ra ~= rb then return ra < rb end

    local na, nb = #a.subshell_occupancy, #b.subshell_occupancy
    local n = (na < nb) and na or nb

    for i = 1, n do
        local ai, bi = a.subshell_occupancy[i], b.subshell_occupancy[i]
        if ai ~= bi then return ai < bi end
    end

    return na < nb
end

function ElectronConfiguration.__le(a, b)
    return not ElectronConfiguration.__lt(b, a)
end

---@class ElectronConfigurationInitOpts
---@field core string|nil    -- noble-gas symbol like "He","Ne","Ar","Kr","Xe","Rn"
---@field subshell_occupancy  SubshellOccupancy[] -- ordered list as written (keep authoring order)

-- TODO: Make immutable
---@param opts ElectronConfigurationInitOpts
---@return ElectronConfiguration
function ElectronConfiguration:new(opts)

    assert(type(opts) == "table", "opts table required")

    assert(
        opts.core == nil or type(opts.core) == "string" and #opts.core == 2,
        string.format("expected 'core' string of nil or 2 characters but got: %s", tostring(opts.core))
    )

    local normalized_core_string = opts.core and (opts.core:sub(1,1):upper() .. opts.core:sub(2):lower()) or nil

    assert(
        normalized_core_string == nil or NOBLE_GAS_SYMBOLS[normalized_core_string],
        string.format("expected 'core' string of nil, 'He','Ne','Ar','Kr','Xe',or 'Rn' but got: %s", opts.core)
    )

    assert(
        is_array_of_subshell_occupancies(opts.subshell_occupancy),
        string.format("expected non empty 'subshell_occupancy' array of SubshellOccupancies but got: %s", tostring(opts.subshell_occupancy))
    )

    local obj = setmetatable({
        core = normalized_core_string,
        subshell_occupancy = opts.subshell_occupancy
    }, self)

    return obj
end

return ElectronConfiguration
