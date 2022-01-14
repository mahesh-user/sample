#!/bin/bash

read -p "enter n number : " n

i=0
value=1
while [ $i -le $n ]
do
	if [ $i = 0 ]
	then
		value=1
	else
		value=$(($value * 2))
	fi
echo "2 power $i = $value"	
	if [ $value -eq 256 ]
	then
		break
	fi
	i=$(($i + 1))
	

done
