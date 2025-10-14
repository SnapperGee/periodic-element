local function is_array(obj, check_type)
    if type(obj) ~= "table" or rawget(obj, 1) == nil then return false end

    for k, v in pairs(obj) do
        if type(k) ~= "number"
            or k < 1
            or k ~= math.floor(k)
            or (k ~= 1 and rawget(obj, k-1) == nil)
            or (type(check_type) == "string" and type(v) ~= check_type)
            or (type(check_type) == "table" and (type(v) ~= "table" or getmetatable(v) ~= check_type))
            or (type(check_type) == "function" and not check_type(v)) then
            return false
        end
    end

    return true
end
