#!/bin/bash

echo "Válassz az alábbi menüpontok közül: "
echo "1. Kétváltozós műveletek"
echo "2. Derékszögű háromszög kerülete, területe"
echo "3. Négyzet kerülete, területe"
read input

if [ $input -eq 1 ]
    then
    echo "Adj meg két számot: "
    read a
    read b

    echo "Add meg az elvégzendő műveletet: "
    echo "1. Összeadás"
    echo "2. Kivonás"
    echo "3. Szorzás"
    echo "4. Osztás"
    read ch

    case $ch in
        1)res=`echo $a + $b | bc`
        ;;
        2)res=`echo $a - $b | bc`
        ;;
        3)res=`echo $a \* $b | bc`
        ;;
        4)res=`echo "scale=2; $a / $b" | bc`
	;;
    esac
    echo "Az eredmény: $res"
fi

if [ $input -eq 2 ]
then
    echo "Add meg a derékszögű háromszög oldalait: "
    read a
    read b
    read c
    ker=$((a + b + c ))
    ter=$((a * b ))
    echo "A háromszög kerülete: $ker"
    echo "A háromszög területe: $((ter / 2 ))"
fi

if [ $input -eq 3 ]
then
    echo "Add meg a négyzet oldalát: "
    read a
    ker=$(expr 4 \* $a )
    ter=$(expr $a \* $a )
    echo "A négyzet kerülete: $ker"
    echo "A négyzet területe: $ter"
fi