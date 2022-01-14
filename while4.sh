#!/bin/bash

value=100
goal=200
bet=1

while [ $value -lt $goal -a $value -gt 0 ]
do
	a=$((RANDOM%2))
	if [ $a -eq 0 ]
	then
		echo "win"
		value=$(($value + $bet))
	else
		echo "lose"
		value=$(($value - $bet))
	fi
	if [ $value -eq 0 ]
	then
		echo "he losses all his value"
		break
	fi
	if [ $value -eq $goal ]
	then
		echo "he reached his goal"
		break
	fi
done
