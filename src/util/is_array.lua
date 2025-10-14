---@param arg any
---@param value_type? string|table|fun(v:any):boolean
---@return boolean
local function is_array(arg, value_type)
    if type(arg) ~= "table" or rawget(arg, 1) == nil then return false end

    for k, v in pairs(arg) do
        if type(k) ~= "number"
            or k < 1
            or k ~= math.floor(k)
            or v == nil
            or (k ~= 1 and rawget(arg, k-1) == nil)
            or (type(value_type) == "string" and type(v) ~= value_type)
            or (type(value_type) == "table" and (type(v) ~= "table" or getmetatable(v) ~= value_type))
            or (type(value_type) == "function" and not check_type(v)) then
            return false
        end
    end

    return true
end

return is_array
