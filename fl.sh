
#!/bin/bash -x

a=1
b=0
n=$((RANDOM%5))
while [ $b -lt $n ]
do
  a=$((a * 2))
  b=$((b + 1))
done

echo "2 power $n is $a"
