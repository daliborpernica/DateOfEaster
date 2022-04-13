<#
    Date of Easter
    Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67
#>

while ($true)
{
    $x = Read-Host "Enter a year"
    if ([int]$x -ge 1583)
    {
        break
    }
    Write-Host "Year earlier than 1583 is not allowed!";
}

$a = $x % 19
$b = [int][Math]::Floor($x / 100)
$c = $x % 100
$d = [int][Math]::Floor($b / 4)
$e = $b % 4
$f = [int][Math]::Floor(($b + 8) / 25)
$g = [int][Math]::Floor(($b - $f + 1) / 3)
$h = (19 * $a + $b - $d - $g + 15) % 30
$i = [int][Math]::Floor($c / 4)
$k = $c % 4
$l = (32 + 2 * $e + 2 * $i - $h - $k) % 7
$m = [int][Math]::Floor(($a + 11 * $h + 22 * $l) / 451)
$z = $h + $l - 7 * $m + 114
$n = [int][Math]::Floor($z / 31)
$p = $z % 31 + 1

switch ($n)
{
    3 { Write-Host "March $p" }
    4 { Write-Host "April $p" }
}
