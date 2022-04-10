#!/bin/bash
#  Date of Easter
#  Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67

while true
do
    read -p "Enter a year: " x
    if [[ $x -ge 1583 ]]; then
        break
    fi
    echo "Year earlier than 1583 is not allowed!"
done

let a=x%19
let b=x/100
let c=x%100
let d=b/4
let e=b%4
let f=(b+8)/25
let g=(b-f+1)/3
let h=(19*a+b-d-g+15)%30
let i=c/4
let k=c%4
let l=(32+2*e+2*i-h-k)%7
let m=(a+11*h+22*l)/451
let z=h+l-7*m+114
let n=z/31
let p=z%31+1

case $n in
    3)
    echo "March $p"
    ;;
    4)
    echo "April $p"
    ;;
esac
