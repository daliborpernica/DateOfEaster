#!/usr/bin/perl

# Date of Easter
# Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67

use strict;
use warnings;

my $x;
while (1)
{
    print "Enter a year:";
    $x = <STDIN>;
    chomp $x;
    if ($x >= 1583)
    {
        last;
    }
    print "Year earlier than 1583 is not allowed!\n";
}
 
my $a = $x % 19;
my $b = int($x / 100);
my $c = $x % 100;
my $d = int($b / 4);
my $e = $b % 4;
my $f = int(($b + 8) / 25);
my $g = int(($b - $f + 1) / 3);
my $h = (19 * $a + $b - $d - $g + 15) % 30;
my $i = int($c / 4);
my $k = $c % 4;
my $l = (32 + 2 * $e + 2 * $i - $h - $k) % 7;
my $m = int(($a + 11 * $h + 22 * $l) / 451);
my $z = $h + $l - 7 * $m + 114;
my $n = int($z / 31);
my $p = $z % 31 + 1;

if ($n == 3)
{
    print "March $p\n";
}
elsif ($n == 4)
{
    print "April $p\n";
}
