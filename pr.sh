#!/bin/bash -x

read -p " enter a number " n
for (( i=2; i<=2^n; i++ ))
do
a=$(($n^$x))
if [ $a -le 2^n ]
then
echo "$a is not greater then 2^n "
exit
fi
echo " $a is powers of 2 "
