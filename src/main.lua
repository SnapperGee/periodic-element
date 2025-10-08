local Element = require("src.element")
local inspect = require("inspect")

local lithium = Element:new{
    name = "lithium",
    symbol = "li",
    number = 3,
    mass = 6.941,
    group = 1,
    period = 2,
    block = "s"
}

print(inspect(lithium))
