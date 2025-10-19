local ELECTRON_CAP = { s = 2, p = 6, d = 10, f = 14 }
local N_MIN = { s = 1, p = 2, d = 3, f = 4 }
local L_LETTER_RANK = { s=0, p=1, d=2, f=3 }

local SUPER = {
    [0]="⁰", "¹", "²", "³", "⁴", "⁵", "⁶",
    "⁷", "⁸", "⁹", "¹⁰", "¹¹", "¹²", "¹³", "¹⁴"
}

---@alias SubshellLetter '"s"'|'"p"'|'"d"'|'"f"'

local VALID_L_LETTER = { s = true, p = true, d = true, f = true }

---@class SubshellOccupancy
---@field n integer              -- principal quantum number (e.g., 3 in 3d10)
---@field l SubshellLetter       -- azimuthal (angular-momentum) quantum number (orbital/subshell type or subshell letter): s/p/d/f
---@field electron_count integer -- electrons occupying that subshell (capacity: s≤2,p≤6,d≤10,f≤14)
---@field canonical_string string
local SubshellOccupancy = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        local self_data = DATA[self]
        if self_data ~= nil then
            local value = self_data[k]
            if value ~= nil then return value end
        end
        return SubshellOccupancy[k]
    end,
    __newindex = function(self, k, v)
        error("SubshellOccupancy records are immutable", 2)
    end,
    __eq = function(self, other)
        if rawequal(self, other) then return true end

        local self_data, other_data = DATA[self], DATA[other]

        if self_data == nil or other_data == nil then
            return false
        end

        return self_data.n == other_data.n
            and self_data.l == other_data.l
            and self_data.electron_count == other_data.electron_count
    end,
    __lt = function(self, other)
        if rawequal(self, other) then return false end

        local self_data, other_data = DATA[self], DATA[other]

        if self_data == nil or other_data == nil then
            error("comparison with non-SubshellOccupancy", 2)
        end

        local self_l_rank = L_LETTER_RANK[self_data.l]
        local other_l_rank = L_LETTER_RANK[other_data.l]

        local k_self = self_data.n + self_l_rank
        local k_other = other_data.n + other_l_rank

        if k_self ~= k_other then
            return k_self < k_other
        end

        if self_data.n ~= other_data.n then
            return self_data.n < other_data.n
        end

        if self_l_rank ~= other_l_rank then
            return self_l_rank < other_l_rank
        end

        return self_data.electron_count < other_data.electron_count
    end,
    __le = function(self, other)
        return not METATABLE.__lt(other, self)
    end,
    __tostring = function(self)
        local keys, parts = {}, {}

        local self_data = DATA[self]

        local k = next(self_data)
        while k ~= nil do
            keys[#keys+1] = k
            k = next(self_data, k)
        end

        table.sort(keys, function(a, b) return tostring(a) < tostring(b) end)

        for _, key in ipairs(keys) do
            local v = rawget(self_data, key)
            local vr = (type(v) == "string") and string.format("%q", v) or tostring(v)
            parts[#parts+1] = string.format("%s=%s", tostring(key), vr)
        end

        local key_value_pairs = table.concat(parts, ", ")

        return string.format("SubshellOccupancy{%s}", key_value_pairs)
    end,
    __metatable = SubshellOccupancy
}

function SubshellOccupancy:principal_quantum_number()
    return self.n
end

function SubshellOccupancy:subshell_letter()
    return self.l
end

---@class SubshellOccupancyInitOpts
---@field n integer              -- principal quantum number (e.g., 3 in 3d10)
---@field l SubshellLetter       -- azimuthal (angular-momentum) quantum number (orbital/subshell type or subshell letter): s/p/d/f
---@field electron_count integer -- electrons occupying that subshell (capacity: s≤2,p≤6,d≤10,f≤14)

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
        type(opts.n) == "number" and opts.n == math.floor(opts.n) and opts.n >= N_MIN[normalized_l],
        string.format("'n' (principal quantum number) with subshell '%s' must be integer greater than or equal to %d but got: %s", opts.l, N_MIN[normalized_l], tostring(opts.n))
    )

    assert(
        type(opts.electron_count) == "number" and opts.electron_count == math.floor(opts.electron_count) and opts.electron_count >= 1 and opts.electron_count <= ELECTRON_CAP[normalized_l],
        string.format("'electron_count' with subshell '%s' must be integer in [1, %d] but got: %s", opts.l, ELECTRON_CAP[normalized_l], tostring(opts.electron_count))
    )

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = {
        n = opts.n,
        l = normalized_l,
        electron_count = opts.electron_count,
        canonical_string = string.format("%d%s%s", opts.n, normalized_l, SUPER[opts.electron_count])
    }

    return obj
end

return SubshellOccupancy
