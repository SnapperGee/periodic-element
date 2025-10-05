local Element = require("src.element")
local inspect = require("inspect")

local lithium = Element:new{
    name = "Lithium",
    symbol = "Li",
    number = 3,
    mass = 6.941
}

print(inspect(lithium))
