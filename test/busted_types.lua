---@meta

---@param desc string
---@param func fun()
describe = function(desc, func) end

---@param desc string
---@param func fun()
it = function(desc, func) end

---@generic T
---@param expected T
---@param actual T
---@param message? string|nil
function equal(expected, actual, message) end

assert = {
    is_not_nil = function(arg, message) end,
    is_nil = function(arg, message) end,
    are = {
        equal = equal
    }
}
