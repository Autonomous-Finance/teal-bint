local tl = require("tl")
tl.loader()

local bint = require 'bint' (256) -- use 256 bits integers
local x = bint(1)
x = x << 128
print(x) -- outputs: 340282366920938463463374607431768211456
assert(tostring(x) == '340282366920938463463374607431768211456')
