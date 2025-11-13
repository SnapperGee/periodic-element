---@meta

---@param desc string
---@param func fun()
local function string_and_callback(desc, func) end

describe = string_and_callback

it = string_and_callback

test = string_and_callback

---@param arg any
---@param message? string|nil
local function single_arg(arg, message) end

---@generic T
---@param expected T
---@param actual T
---@param message? string|nil
local function two_arg(expected, actual, message) end

assert = {
    is_true = single_arg,
    is_not_nil = single_arg,
    is_nil = single_arg,
    are = {
        same = two_arg,
        equal = two_arg,
        equals = two_arg
    }
}
