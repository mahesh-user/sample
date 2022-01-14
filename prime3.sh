#!/bin/bash
read -p "enter a number : " x
for (( i=2;i<=$x/2;i++ ))
do
a=$(($x%$i))
if [ $a -eq 0 ]
then
echo "$x is not a prime number"
exit
fi
done
echo "$x ia prime number"
