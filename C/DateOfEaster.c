/*
   Date of Easter
   Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67
*/

#include <stdio.h>

int main(void)
{
    int x, a, b, c, d, e, f, g, h, i, k, l, m, n, p, z;

    for(;;)
    {
        printf("Enter a year:");
        scanf("%d", &x);

        if (x >= 1583) break;
        printf("Year earlier than 1583 is not allowed!\n");
    }

    a = x % 19;
    b = x / 100;
    c = x % 100;
    d = b / 4;
    e = b % 4;
    f = (b + 8) / 25;
    g = (b - f + 1) / 3;
    h = (19 * a + b - d - g + 15) % 30;
    i = c / 4;
    k = c % 4;
    l = (32 + 2 * e + 2 * i - h - k) % 7;
    m = (a + 11 * h + 22 * l) / 451;
    z = h + l - 7 * m + 114;
    n = z / 31;
    p = z % 31 + 1;

    switch (n)
    {
        case 3:
            printf("March %d\n", p);
            break;
        case 4:
            printf("April %d\n", p);
            break;
    }

    return 0;
}
