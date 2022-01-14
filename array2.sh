#!/bin/bash

read -p "enter the length of the array : " n
declare -a array
for (( i=0;i<n;i++ ))
do
	read -p "enter the $(($i + 1)) element : " a
	array[$i]=$a

done

echo ${array[@]}
#max and min

max=${array[0]}
min=${array[0]}

for (( j=1;j<n;j++ ))
do
	if [ $max -lt ${array[j]} ]
	then
		max=${array[j]}
	fi
	
	if [ $min -gt ${array[j]} ]
	then
		min=${array[j]}
	fi
	

done
echo "maximum value = $max"
echo "minimum value = $min"

#second largest and second least

max2=$min
min2=$max

for (( k=0;k<$n;k++ ))
do
	if [ ${array[k]} -lt $max -a ${array[k] -gt $max2 ]
	then
		max2=${array[k]
	fi
	
	if [ ${array[k] -gt $min -a ${array[k] -lt $min2 ]
	then
		min2=${array[k]
done
echo "second maximum element = $max2"
echo "second minimum value = $min2"
