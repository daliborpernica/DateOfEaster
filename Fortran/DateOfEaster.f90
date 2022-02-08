!   Date of Easter
!   Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67 

program DateOfEaster
implicit none
    integer :: x, a, b, c, d, e, f, g, h, i, k, l, m, n, p, z

10  print *,'Enter year:' 
    read *, x
    
    if (x < 1583) then
        print *,'Year earlier than 1583 is not allowed!'
        go to 10
    endif

    a = mod(x, 19)
    b = x / 100
    c = mod(x, 100)
    d = b /4
    e = mod(b, 4)
    f = (b + 8) / 25;
    g = (b - f + 1) /3;
    h = mod(19 * a + b - d - g + 15, 30)
    i = c / 4
    k = mod(c, 4)
    l = mod(32 + 2 * e + 2 * i - h - k, 7)
    m = (a + 11 * h + 22 * l) / 451
    z = h + l - 7 * m + 114
    n = z / 31
    p = mod(z, 31)

    if (n == 3 .or. n == 4) then
        if (n == 3) then
            print *, "March ", p + 1
        else
            print *, "April ", p + 1
        endif
    endif

end program DateOfEaster