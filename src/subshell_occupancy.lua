local ELECTRON_CAP = { s = 2, p = 6, d = 10, f = 14 }
local N_MIN = { s = 1, p = 2, d = 3, f = 4 }

---@alias SubshellLetter '"s"'|'"p"'|'"d"'|'"f"'

local VALID_SUBSHELL_LETTER = { s = true, p = true, d = true, f = true }

---@class SubshellOccupancy
---@field quantum_number integer         -- principal quantum number (e.g., 3 in 3d10)
---@field subshell_letter SubshellLetter -- subshell letter: s/p/d/f
---@field electron_count integer         -- electrons occupying that subshell (capacity: s≤2,p≤6,d≤10,f≤14)
local SubshellOccupancy = {}

SubshellOccupancy.__index = SubshellOccupancy

---@class SubshellOccupancyInitOpts
---@field quantum_number integer         -- principal quantum number (e.g., 3 in 3d10)
---@field subshell_letter SubshellLetter -- subshell letter: s/p/d/f
---@field electron_count integer         -- electrons occupying that subshell (capacity: s≤2,p≤6,d≤10,f≤14)

---@param opts SubshellOccupancyInitOpts
---@return SubshellOccupancy
function SubshellOccupancy:new(opts)

    assert(type(opts) == "table", "opts table required")

    assert(
        type(opts.subshell_letter) == "string" and VALID_SUBSHELL_LETTER[opts.subshell_letter],
        string.format("'subshell_letter' must be one of 's','p','d','f' but got: %s", tostring(opts.subshell_letter))
    )

    assert(
        type(opts.quantum_number) == "number" and opts.quantum_number % 1 == 0 and opts.quantum_number >= N_MIN[opts.subshell_letter],
        string.format("'quantum_number' with subshell '%s' must be integer greater than or equal to %d but got : %s", opts.subshell_letter, N_MIN[opts.subshell_letter], tostring(opts.quantum_number))
    )

    assert(
        type(opts.electron_count) == "number" and opts.electron_count % 1 == 0 and opts.electron_count >= 1 and opts.electron_count <= ELECTRON_CAP[opts.subshell_letter],
        string.format("'electron_count' with subshell '%s' must be integer in [1, %d] but got: %s", opts.subshell_letter, ELECTRON_CAP[opts.subshell_letter], tostring(opts.electron_count))
    )

    local obj = setmetatable({
        quantum_number = opts.quantum_number,
        subshell_letter = opts.subshell_letter,
        electron_count = opts.electron_count
    }, self)

    return obj
end

return SubshellOccupancy
