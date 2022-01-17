#!/bin/bash -x

a=1
b=1
n=3
while [ $b -le $n]
do
    a=$(($a*2))
    b=$(($b+1))
done
