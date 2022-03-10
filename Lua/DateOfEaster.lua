#!/usr/bin/lua

-- Date of Easter
-- Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67

local x

repeat
    io.write('Enter a year: ')
    x = tonumber(io.read())
    if (x == nil) then
        io.write("Not a number!\n")
    elseif (x < 1583) then
        io.write("Year earlier than 1583 is not allowed!\n")
    else
        break
    end
until (false)

local a = x % 19
local b = x // 100
local c = x % 100
local d = b // 4
local e = b % 4
local f = (b + 8) // 25
local g = (b - f + 1) // 3
local h = (19 * a + b - d - g + 15) % 30
local i = c // 4
local k = c % 4
local l = (32 + 2 * e + 2 * i - h - k) % 7
local m = (a + 11 * h + 22 * l) // 451
local z = h + l - 7 * m + 114
local n = z // 31
local p = z % 31

if (n == 3) then
    io.write('March ', p + 1, '\n')
elseif (n == 4) then
    io.write('April ', p + 1, '\n')
end
