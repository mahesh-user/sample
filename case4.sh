#!/bin/bash
read -p "enter a number between 1 to 4 : " a
case $a in
	1)
		echo "feet to inches"
		read -p "enter the number : " b
		c=$(($b*12))
		echo $c ;;
	2)
		echo "inches to feet"
		read -p "enter the number : " b
		c=$(($b/12))
		echo $c ;;
	3)
		echo "feet to meters"
		read -p "enter the number : " b
		c=$(($b*0.348))
		echo $c ;;
	4)
		echo "meters to feet"
		read -p "enter the number : " b
		c=$(($b*3.28))
		echo $c ;;
	*)
		echo "enter a correct number" ;;
esac
