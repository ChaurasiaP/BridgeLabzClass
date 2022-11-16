#!/bin/bash -x

echo "Enter number"
read n

if [ $n == 1 ]
then 
	echo One

elif [ $n == 10 ]
then 
	echo Ten

elif [ $n == 100 ] 
then 
	echo Hundread

elif [ $n == 1000 ] 
then
	echo Thousand

elif [ $n == 10000 ]
then
	echo Ten Thousand

elif [ $n == 100000 ]
then
	echo Lakh

elif [ $n == 1000000 ]
then 
	echo Ten Lakh

elif [ $n == 10000000 ]
then
	echo Crores

elif (( $n > 10000000 ))
then
	echo Digit is greater than One Crore

else
	echo Try Again 
fi
