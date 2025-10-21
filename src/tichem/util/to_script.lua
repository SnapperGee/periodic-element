local SUBSCRIPT_CHARACTER = {
    [0] = "₀", "₁", "₂", "₃", "₄", "₅", "₆", "₇", "₈", "₉", ["-"] = "₋"
}

local SUPERSCRIPT_CHARACTER = {
    [0]="⁰", "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹", ["-"] = "⁻"
}

---@param script_type "super"|"sub"
---@param arg integer
---@return string
local function to_script(script_type, arg)
    assert(
        type(arg) == "number" and arg == math.floor(arg),
        "integer expected but got: " .. tostring(arg)
    )

    local SUPER

    if script_type == "super" then
        SUPER = SUPERSCRIPT_CHARACTER
    elseif script_type == "sub" then
        SUPER = SUBSCRIPT_CHARACTER
    else
        error("script type of \"super\" or \"sub\" expected but got: " .. tostring(script_type), 2)
    end

    if arg == 0 then
        return "⁰"
    end

    local out = {}

    if arg < 0 then
        out[#out + 1] = SUPER["-"]
        arg = -arg
    end

    local pow = 1
    while pow * 10 <= arg do
        pow = pow * 10
    end

    while pow > 0 do
        local digit = math.floor(arg / pow) -- leading digit
        arg = arg - digit * pow             -- remove that digit
        pow = math.floor(pow / 10)          -- step down
        out[#out + 1] = SUPER[digit]
    end

    return table.concat(out)
end

local function to_superscript(arg)
    return to_script("super", arg)
end

local function to_subscript(arg)
    return to_script("sub", arg)
end

return {
    super = to_superscript,
    sub = to_subscript
}
