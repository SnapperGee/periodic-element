local SubshellOccupancy = require("src.subshell_occupancy")

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

    local obj = setmetatable({}, self)

    return obj
end

return ElectronConfiguration
