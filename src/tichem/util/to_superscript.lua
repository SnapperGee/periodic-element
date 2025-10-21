local SUPER = {
    [0]="⁰", "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹"
}

---@param arg integer
---@return string
local function to_superscript(arg)
    assert(
        type(arg) == "number" and arg == math.floor(arg),
        "integer expected but got: " .. tostring(arg)
    )

    if arg == 0 then
        return "⁰"
    end

    local out = {}

    if arg < 0 then
        out[#out + 1] = "⁻"
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

return to_superscript
