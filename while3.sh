
#!/bin/bash

head_wins=0
tail_wins=0

while [ $head_wins -lt 11 -o $tail_wins -lt 11 ]
do
	toss=$((RANDOM%2))
	if [ $toss -eq 0 ]
	then
		echo "heads"
		head_wins=$(($head_wins + 1))
	else
		echo "tails"
		tail_wins=$(($tail_wins + 1))
	fi
	if [ $head_wins -eq 11 ]
	then
		echo "head_wins"
		break
	fi
	if [ $tail_wins -eq 11 ]
	then
		echo "tail_wins"
		break
	fi
done
