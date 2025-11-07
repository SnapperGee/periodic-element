local function normalize_whitespace(a_string)
    a_string = a_string:match("^%s*(.-)%s*$")
    a_string = a_string:gsub("%s+", " ")
    return a_string
end

return normalize_whitespace
