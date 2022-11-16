#!/bin/bash -x

for (( i=1; i<100; i++ ))
do
	if (( $i%11==0 ))
	then
		doubleDigit[$i]=$i
	else
		continue
	fi
done
echo NUMBERS WITH REPETING DIGITS ARE: ${doubleDigit[@]}

