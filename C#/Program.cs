/*
   Date of Easter
   Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67
*/

class DateOfEaster
{
    static int Main()
    {
        var x = 0;
        while(true)
        {
            Console.Write("Enter a year:");
            x = Convert.ToInt32(Console.ReadLine());

            if (x >= 1583) break;
            Console.WriteLine("Year earlier than 1583 is not allowed!");
        }

        var a = x % 19;
        var b = x / 100;
        var c = x % 100;
        var d = b / 4;
        var e = b % 4;
        var f = (b + 8) / 25;
        var g = (b - f + 1) / 3;
        var h = (19 * a + b - d - g + 15) % 30;
        var i = c / 4;
        var k = c % 4;
        var l = (32 + 2 * e + 2 * i - h - k) % 7;
        var m = (a + 11 * h + 22 * l) / 451;
        var z = h + l - 7 * m + 114;
        var n = z / 31;
        var p = z % 31 + 1;

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
