local ELECTRON_CAP = { s = 2, p = 6, d = 10, f = 14 }
local N_MIN = { s = 1, p = 2, d = 3, f = 4 }
local L_LETTER_RANK = { s=0, p=1, d=2, f=3 }

---@alias SubshellLetter '"s"'|'"p"'|'"d"'|'"f"'

local VALID_L_LETTER = { s = true, p = true, d = true, f = true }

---@class SubshellOccupancy
---@field n integer        -- principal quantum number (e.g., 3 in 3d10)
---@field l SubshellLetter -- azimuthal (angular-momentum) quantum number (orbital/subshell type or subshell letter): s/p/d/f
---@field electron_count integer         -- electrons occupying that subshell (capacity: s≤2,p≤6,d≤10,f≤14)
local SubshellOccupancy = {}

SubshellOccupancy.__index = SubshellOccupancy

function SubshellOccupancy.__newindex()
    error("SubshellOccupancy records are immutable", 2)
end

function SubshellOccupancy.__eq(a, b)
    return rawequal(a,b)
        or a.n == b.n
        and a.l == b.l
        and a.electron_count == b.electron_count
end

function SubshellOccupancy.__lt(a, b)
    if rawequal(a, b) then return false end

    if a.n ~= b.n then
        return a.n < b.n
    end

    local ra, rb = l_RANK[a.l], L_LETTER_RANK[b.subshell_letter]

    if ra ~= rb then
        return ra < rb
    end

    return a.electron_count < b.electron_count
end

function SubshellOccupancy.__le(a, b)
    return not SubshellOccupancy.__lt(b, a)
end

---@class SubshellOccupancyInitOpts
---@field n integer         -- principal quantum number (e.g., 3 in 3d10)
---@field l SubshellLetter -- azimuthal (angular-momentum) quantum number (orbital/subshell type or subshell letter): s/p/d/f
---@field electron_count integer         -- electrons occupying that subshell (capacity: s≤2,p≤6,d≤10,f≤14)

-- TODO: Make immutable
---@param opts SubshellOccupancyInitOpts
---@return SubshellOccupancy
function SubshellOccupancy:new(opts)

    assert(type(opts) == "table", "opts table required")

    assert(
        type(opts.l) == "string" and #opts.l == 1,
        string.format("'l' must be one character but got: %s", tostring(opts.l))
    )

    local normalized_l = opts.l:lower()

    assert(
        VALID_L_LETTER[normalized_l],
        string.format("'l' (subshell letter) must be one of 's','p','d','f' but got: %s", tostring(opts.l))
    )

    assert(
        type(opts.n) == "number" and opts.n % 1 == 0 and opts.n >= N_MIN[opts.l],
        string.format("'n' (principal quantum number) with subshell '%s' must be integer greater than or equal to %d but got : %s", opts.l, N_MIN[opts.l], tostring(opts.n))
    )

    assert(
        type(opts.electron_count) == "number" and opts.electron_count % 1 == 0 and opts.electron_count >= 1 and opts.electron_count <= ELECTRON_CAP[opts.l],
        string.format("'electron_count' with subshell '%s' must be integer in [1, %d] but got: %s", opts.l, ELECTRON_CAP[opts.l], tostring(opts.electron_count))
    )

    local obj = setmetatable({
        quantum_number = opts.n,
        subshell_letter = normalized_l,
        electron_count = opts.electron_count
    }, self)

    return obj
end

return SubshellOccupancy
