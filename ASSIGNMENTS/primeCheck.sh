#!/bin/bash -x

echo "enter number"
read n

for (( i=2; i<=$(($n/2)); i++ ))
do
	check=$((n%i))
	if (( $check == 0 ))
	then
		echo "not prime"
		break
	else
		echo "prime"
		break
	fi
done
