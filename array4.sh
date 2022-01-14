#!/bin/bash
read -p "number of elemnts in array : " n
declare -a array
for (( i=0;i<$n;i++ ))
do
	read -p "enter elements in the array : " e
	array[$i]=$e
done
# sumof three digits is zero

for (( x=0;x<$n;x++ ))
do
	for (( y=$((x+1));y<$n;y++ ))
	do
		for (( z=$((y+1));z<$n;z++ ))
		do
			sum=$(( array[$x] + array[$y] + array[$z] ))
			if [ $sum -eq 0 ]
			then
				echo "sum of ${array[$x]} ,${array[$y]} , ${array[$z]} = 0 "
				fi
		done
	
	done

done
