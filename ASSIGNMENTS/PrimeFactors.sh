#!/bin/bash -x

echo "ENTER NUMBER: "
read n
c=2
echo PRIME FACTORS OF $n are:

function getFactors()
{
	while (( n>1 ))
	do
		if [ $((n%c)) -eq 0 ]
		then
			FactArray[c]=$((c))    #in [ ]  what should we write????
			n=$((n/c))
		else 
			c=$((c+1))
		fi
	done
}
getFactors
echo PRIME FACTORS ARE: ${FactArray[@]}
