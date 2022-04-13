/*
   Date of Easter
   Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67
*/

class DateOfEaster
{
    static int Main()
    {
        int x, a, b, c, d, e, f, g, h, i, k, l, m, n, p, z;

        for(;;)
        {
            Console.Write("Enter a year:");
            x = Convert.ToInt32(Console.ReadLine());

            if (x >= 1583) break;
            Console.WriteLine("Year earlier than 1583 is not allowed!");
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
                Console.WriteLine("March {0}", p);
                break;
            case 4:
                Console.WriteLine("April {0}", p);
                break;
        }

        return 0;
    }
}
