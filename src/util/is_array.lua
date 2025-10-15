---@param arg any
---@param value_type_or_predicate? string|table|fun(v:any):boolean
---@return boolean
local function is_array(arg, value_type_or_predicate)
    if type(arg) ~= "table" or rawget(arg, 1) == nil then return false end

    for k, v in pairs(arg) do
        if type(k) ~= "number"
            or k < 1
            or k ~= math.floor(k)
            or v == nil
            or (k ~= 1 and rawget(arg, k-1) == nil)
            or (type(value_type_or_predicate) == "string" and type(v) ~= value_type_or_predicate)
            or (type(value_type_or_predicate) == "table" and (type(v) ~= "table" or getmetatable(v) ~= value_type_or_predicate))
            or (type(value_type_or_predicate) == "function" and not value_type_or_predicate(v)) then
            return false
        end
    end

    return true
end

return is_array
