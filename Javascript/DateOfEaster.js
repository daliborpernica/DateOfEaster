const x = new Date().getFullYear();

if (Math.floor(x) != x)
{
    throw 'Year with decimal fraction is not allowed!';
}

if (x < 1583)
{
    throw 'Year earlier than 1583 is not allowed!';
}

const a = x % 19;
const b = Math.floor(x / 100)
const c = x % 100;
const d = Math.floor(b / 4);
const e = b % 4;
const f = Math.floor((b + 8) / 25);
const g = Math.floor((b - f + 1) / 3);
const h = (19 * a + b - d - g + 15) % 30;
const i = Math.floor(c / 4);
const k = c % 4;
const l = (32 + 2 * e + 2 * i - h - k) % 7;
const m = Math.floor((a + 11 * h + 22 * l) / 451);
const z = h + l - 7 * m + 114;
const n = Math.floor(z / 31);
const p = z % 31;

switch (n)
{
    case 3:
        console.log('March %d', p + 1);
        break;
    case 4:
        console.log('April %d', p + 1);
        break;
}