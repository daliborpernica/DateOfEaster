/*
   Date of Easter
   Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67
*/

import java.io.Console;  

class DateOfEaster
{  
    public static void main(String args[])
    {  
        var console = System.console();

        var x = 0;
        while (true)
        {
            x = Integer.parseInt(System.console().readLine("Enter a year:"));
            if (x >= 1583) break;
            console.printf("Year earlier than 1583 is not allowed!\n");
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
                console.printf("March %d\n", p);
                break;
            case 4:
                console.printf("April %d\n", p);
                break;
        }
    }  
}  