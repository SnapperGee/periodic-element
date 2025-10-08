local ELECTRON_CAP = { s = 2, p = 6, d = 10, f = 14 }
local N_MIN = { s = 1, p = 2, d = 3, f = 4 }
local L_LETTER_RANK = { s=0, p=1, d=2, f=3 }

local SUPER = {
    [0]="⁰", "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹",
    ["+"]='⁺', ["-"]='⁻', ["="]='⁼', ["("]='⁽', [")"]='⁾',
}

---@alias SubshellLetter '"s"'|'"p"'|'"d"'|'"f"'

local VALID_L_LETTER = { s = true, p = true, d = true, f = true }

---@class SubshellOccupancy
---@field n integer              -- principal quantum number (e.g., 3 in 3d10)
---@field l SubshellLetter       -- azimuthal (angular-momentum) quantum number (orbital/subshell type or subshell letter): s/p/d/f
---@field electron_count integer -- electrons occupying that subshell (capacity: s≤2,p≤6,d≤10,f≤14)
local SubshellOccupancy = {}

SubshellOccupancy.__index = SubshellOccupancy

function SubshellOccupancy.__newindex()
    error("SubshellOccupancy records are immutable", 2)
end

function SubshellOccupancy:__eq(other)
    return rawequal(self,other)
        or self.n == other.n
        and self.l == other.l
        and self.electron_count == other.electron_count
end

function SubshellOccupancy:__lt(other)
    if rawequal(self, other) then return false end

    if self.n ~= other.n then
        return self.n < other.n
    end

    local ra, rb = l_RANK[self.l], L_LETTER_RANK[other.subshell_letter]

    if ra ~= rb then
        return ra < rb
    end

    return self.electron_count < other.electron_count
end

function SubshellOccupancy:__le(other)
    return not SubshellOccupancy.__lt(other, self)
end

function SubshellOccupancy:__tostring()
    local keys, parts = {}, {}

    local k = next(self)
    while k ~= nil do
        keys[#keys+1] = k
        k = next(self, k)
    end

    table.sort(keys, function(a, b) return tostring(a) < tostring(b) end)

    for _, key in ipairs(keys) do
        local v = rawget(self, key)        -- raw read: no __index
        local vr = (type(v) == "string") and string.format("%q", v) or tostring(v)
        parts[#parts+1] = string.format("%s=%s", tostring(key), vr)
    end

    local key_value_pairs = table.concat(parts, ", ")

    return string.format("SubshellOccupancy{%s}", key_value_pairs)
end

function SubshellOccupancy:principal_quantum_number()
    return self.n
end

function SubshellOccupancy:subshell_letter()
    return self.l
end

function SubshellOccupancy:formatted_string()
    return string.format("%s%s%s", self.n, self.l, SUPER[self.electron_count])
end

---@class SubshellOccupancyInitOpts
---@field n integer              -- principal quantum number (e.g., 3 in 3d10)
---@field l SubshellLetter       -- azimuthal (angular-momentum) quantum number (orbital/subshell type or subshell letter): s/p/d/f
---@field electron_count integer -- electrons occupying that subshell (capacity: s≤2,p≤6,d≤10,f≤14)

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
        n = opts.n,
        l = normalized_l,
        electron_count = opts.electron_count
    }, self)

    return obj
end

return SubshellOccupancy
