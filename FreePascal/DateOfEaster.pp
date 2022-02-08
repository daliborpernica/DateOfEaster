{
    Date of Easter
    Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67 
}
program DateOfEaster;
label
    input;
var
    x, a, b, c, d, e, f, g, h, i, k, l, m, n, p, z : Integer;
begin

input:
    Write('Enter a year:');
    ReadLn(x);

    if (x < 1583) then
    begin
        WriteLn('Year earlier than 1583 is not allowed!');
        goto input;
    end;

    a := x mod 19;
    b := x div 100;
    c := x mod 100;
    d := b div 4;
    e := b mod 4;
    f := (b + 8) div 25;
    g := (b - f + 1) div 3;
    h := (19 * a + b - d - g + 15) mod 30;
    i := c div 4;
    k := c mod 4;
    l := (32 + 2 * e + 2 * i - h - k) mod 7;
    m := (a + 11 * h + 22 * l) div 451;
    z := h + l - 7 * m + 114;
    n := z div 31;
    p := z mod 31;

    case n of
        3: WriteLn('March ', p + 1);
        4: WriteLn('April ', p + 1);
    end;
end.