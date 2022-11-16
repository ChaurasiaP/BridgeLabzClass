#!/bin/bash -x

echo "ENTER NUMBER:"
read n
count=1
for (( i=$n; i>=1; i-- ))
do
	count=$(($i*$count))
done
echo "FACTORIAL of $n IS:" $count
