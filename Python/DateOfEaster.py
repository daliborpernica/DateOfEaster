#!/usr/bin/env python

# Date of Easter
# Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67

while True:
    x = int(raw_input("Enter a year:"))
    if x >= 1583:
        break
    print("Year earlier than 1583 is not allowed!")

a = x % 19
b = x / 100
c = x % 100
d = b / 4
e = b % 4
f = (b + 8) / 25
g = (b - f + 1) / 3
h = (19 * a + b - d - g + 15) % 30
i = c / 4
k = c % 4
l = (32 + 2 * e + 2 * i - h - k) % 7
m = (a + 11 * h + 22 * l) / 451
z = h + l - 7 * m + 114
n = z / 31
p = z % 31

if n == 3:
    print("March " + str(p+ 1))
elif n == 4:
    print("April " + str(p + 1))
