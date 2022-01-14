
#!/bin/bash
read -p "enter a number" a
u=$(($a%10))
t=$((($a/10)%10))
h=$((($a/100)%10))
th=$((($a/1000)%10))
echo $u $t $h $th
