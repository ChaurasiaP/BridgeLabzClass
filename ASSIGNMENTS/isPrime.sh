#!/bin/bash -x

echo "ENTER NUMBER"
read n

for (( i=2; i<=$(($n/2)); i++ ))
do
	test=$((n%i))
	if (( $test == 0 ))
	then
		echo "Not Prime"
		exit 0
	fi
done
echo "prime $n"
