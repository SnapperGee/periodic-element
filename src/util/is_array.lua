---@param arg any
---@param check_type? string|table|fun(v:any):boolean
---@return boolean
local function is_array(arg, check_type)
    if type(arg) ~= "table" or rawget(arg, 1) == nil then return false end

    for k, v in pairs(arg) do
        if type(k) ~= "number"
            or k < 1
            or k ~= math.floor(k)
            or (k ~= 1 and rawget(arg, k-1) == nil)
            or (type(check_type) == "string" and type(v) ~= check_type)
            or (type(check_type) == "table" and (type(v) ~= "table" or getmetatable(v) ~= check_type))
            or (type(check_type) == "function" and not check_type(v)) then
            return false
        end
    end

    return true
end

return is_array
