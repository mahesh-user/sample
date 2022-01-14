#!/bin/bash

mul=1
read -p "enter the n value : " n
for (( i=n;i>=1;i-- ))
do
	mul=$(($mul * $i ))
	
done
echo $mul
