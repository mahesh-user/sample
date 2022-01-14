#!/bin/bash
read -p "enter the range : " r
for (( j=2;j<=$r;j++))
	do
		k=0
		for (( i=2;i<=$j/2;i++ ))
			do
			a=$(($j % $i))
			if [ $a -eq 0 ]
			then
				k=1
				break
			fi
		done
		if [ $k -eq 0 ]
		then
		echo $j
		fi
	done
