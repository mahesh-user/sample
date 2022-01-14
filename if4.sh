
#!/bin/bash
a=$((RANDOM%2))
if [ $a == 0 ]
then
echo "Heads"
else
echo "tails"
fi


