#!/bin/bash 

sum=0
echo Enter length
read n

for (( i=1; $i<=$n; i++ ))
do
        read a
        digits[$i]=$(($a))
done
for (( i=1; i<=$((n-2)); i++ ))
do
	num1=$((${digits[$i]}))

	for (( j=$((i+1)); j<=$((n-1)); j++ ))
	do
		num2=$((${digits[$j]}))

		for (( k=$((j+1)); k<=$((n)); k++ ))
		do
			num3=$((${digits[$k]}))
			sum=$((num1+num2+num3))

			if (( $((sum)) == 0 ))
			then
			echo triplet is $num1 $num2 $num3
			else
				continue			
			fi
		done
	done
done

