#!/bin/bash -x

echo "ENTER INTEGER:"
read n

while (( $n<=8 ))
do
	for (( i=1; i<=$n; i++ ))
	do
		echo $((2**$i))
	done
	break
done
