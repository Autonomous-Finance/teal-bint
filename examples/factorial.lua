local tl = require("tl")
tl.loader()
-- Compute the factorial of 100
-- See https://en.wikipedia.org/wiki/Factorial

local bint = require 'bint' (576)

local function factorial(n)
    if n:le(bint(0)) then
        return bint(1)
    else
        return n * factorial(n - bint(1))
    end
end

local x = factorial(bint(100))
print('The factorial of 100 is:')
print(x)

assert(tostring(x) == '\z
933262154439441526816992388562667004907159682643816214685929638952175999932299\z
15608941463976156518286253697920827223758251185210916864000000000000000000000000')
