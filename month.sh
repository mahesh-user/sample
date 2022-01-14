
read -p "enter the date : " a
read -p "enter the month : " b
if (( (( $b <= 6  &&  $a <= 20 )) && (( (( $b >= 3 && $a <= 20 )) && (( $a < 31 )) )) ))
then
	echo "true"
else
	echo "false"
fi
