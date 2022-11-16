#!/bin/bash -x

tails=0
heads=0
test=0

while (( $heads == 11 || $tails == 11 ))
do
	randomCheck=$(($RANDOM%2))
	if [ $test -eq $randomCheck ]
	then
		heads=$(($heads+1))
	else
		tails=$(($tails+1))

	fi
done
echo $heads
echo $tails
