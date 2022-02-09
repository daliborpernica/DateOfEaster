// Date of Easter
// Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67

package main

import "fmt"

func main() {
    var x, a, b, c, d, e, f, g, h, i, k, l, m, n, p, z int

input: fmt.Print("Enter a year:")
    fmt.Scanf("%d", &x)

    if (x < 1583) {
        fmt.Println("Year earlier than 1583 is not allowed!")
        goto input
    }

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
    
    switch n {
    case 3:
        fmt.Println("March ", p + 1)
    case 4:
        fmt.Println("April ", p + 1)
    }
}