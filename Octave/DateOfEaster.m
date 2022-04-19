# Date of Easter
# Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67

while true
    x = fix(input("Enter a year:"));
    if x >= 1583
        break;
    endif
    printf("Year earlier than 1583 is not allowed!\n");
endwhile

a = rem(x, 19);
b = fix(x / 100);
c = rem(x, 100);
d = fix(b / 4);
e = rem(b, 4);
f = fix((b + 8) / 25);
g = fix((b - f + 1) / 3);
h = rem(19 * a + b - d - g + 15, 30);
i = fix(c / 4);
k = rem(c, 4);
l = rem(32 + 2 * e + 2 * i - h - k, 7);
m = fix((a + 11 * h + 22 * l) / 451);
z = h + l - 7 * m + 114;
n = int32(fix(z / 31));
p = int32(rem(z, 31)) + 1;

switch (n)
    case 3
        printf("March %d\n", p);
    case 4
        printf("April %d\n", p);
endswitch
