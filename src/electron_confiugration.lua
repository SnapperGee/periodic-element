local SubshellOccupancy = require("src.subshell_occupancy")

local NOBLE_GAS_SYMBOLS = { He = true, Ne = true, Ar = true, Kr = true, Xe = true, Rn = true }

---@class ElectronConfiguration
---@field core string|nil    -- noble-gas symbol like "He","Ne","Ar","Kr","Xe","Rn"
---@field subshell_occupancy SubshellOccupancy[] -- ordered list as written (keep authoring order)
local ElectronConfiguration = {}

ElectronConfiguration.__index = ElectronConfiguration

---@class ElectronConfigurationInitOpts
---@field core string|nil    -- noble-gas symbol like "He","Ne","Ar","Kr","Xe","Rn"
---@field subshell_occupancy  SubshellOccupancy[] -- ordered list as written (keep authoring order)

---@param opts ElectronConfigurationInitOpts
---@return ElectronConfiguration
function ElectronConfiguration:new(opts)

    assert(type(opts) == "table", "opts table required")

    assert(
        opts.core == nil or type(opts.core) == "string" and #opts.core == 2,
        string.format("expected 'core' string of nil or 2 characters but got: %s", tostring(opts.core))
    )

    local normalized_core_string = opts.core and (opts.core:sub(1,1):upper() .. opts.core:sub(2)) or nil

    assert(
        normalized_core_string == nil or NOBLE_GAS_SYMBOLS[normalized_core_string],
        string.format("expected 'core' string of nil, 'He','Ne','Ar','Kr','Xe',or 'Rn' but got: %s", opts.core)
    )

    -- TODO: check for non empty array of SubshellOccupancy objects
    -- assert(
    --     type(opts.subshell_occupancy) == "table" and getmetatable(opts.subshell_occupancy) == SubshellOccupancy,
    --     string.format("expected non empty 'subshell_occupancy' array table with SubshellOccupancy metatable but got: %s", tostring(opts.subshell_occupancy))
    -- )

    local obj = setmetatable({
        core = normalized_core_string,
        subshell_occupancy = opts.subshell_occupancy
    }, self)

    return obj
end

return ElectronConfiguration
