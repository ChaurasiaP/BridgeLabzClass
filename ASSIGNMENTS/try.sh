#!/bin/bash -x

one=0
n=5

for (( i=0; $((i<n)); i++ ))
do
	((one++))
	echo $((one))
done
