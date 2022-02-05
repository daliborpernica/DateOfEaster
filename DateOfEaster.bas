' Date of Easter in SmallBasic
' Jean Meeus, Astronomical Algorithms, 1998, p. 67
TextWindow.WriteLine("Date of Easter")

input:
TextWindow.Write("Enter a year:")
x = TextWindow.ReadNumber()

If Math.Floor(x) <> x Then
    TextWindow.WriteLine("Year with decimal fraction is not allowed!")
    GoTo input
EndIf

If x < 1583 Then
    TextWindow.WriteLine("Year earlier than 1583 is not allowed!")
    GoTo input
EndIf

a = Math.Remainder(x, 19)
b = Math.Floor(x / 100)
c = Math.Remainder(x, 100)
d = Math.Floor(b / 4)
e = Math.Remainder(b, 4)
f = Math.Floor((b + 8) / 25)
g = Math.Floor((b - f + 1) / 3)
h = Math.Remainder(19 * a + b - d - g + 15, 30)
i = Math.Floor(c / 4)
k = Math.Remainder(c, 4)
l = Math.Remainder(32 + 2 * e + 2 * i - h - k, 7)
m = Math.Floor((a + 11 * h + 22 * l) / 451)
z = h + l - 7 * m + 114
n = Math.Floor(z / 31)
p = Math.Remainder(z, 31)

If n = 3 Or n = 4 Then
    If n = 3 Then
        TextWindow.Write("March ")
    Else
        TextWindow.Write("April ")
    EndIf
    TextWindow.WriteLine(p + 1)      
EndIf
