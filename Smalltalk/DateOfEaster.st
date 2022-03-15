"Date of Easter"
"Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67"

| x a b c d e f g h i k l m z n p |

x := Date today year.

x < 1583
ifTrue: [
    (Exception new messageText: 'Year earlier than 1583 is not allowed!') signal
].

a := x \\ 19.
b := x // 100.
c := x \\ 100.
d := b // 4.
e := b \\ 4.
f := (b + 8) // 25.
g := (b - f + 1) // 3.
h := (19 * a + b - d - g + 15) \\ 30.
i := c // 4.
k := c \\ 4.
l := (2 * e + 2 * i - h - k + 32) \\ 7.
m := (11 * h + 22 * l + a) // 451.
z :=  -7 * m + h + l + 114.
n := z // 31.
p := z \\ 31 + 1.

n == 3
ifTrue: [	
    Transcript show: 'March ', p.
    Transcript cr.
].

n == 4
ifTrue: [
    Transcript show: 'April ', p.
    Transcript cr.
].
