#!/bin/bash  

isFullTime=1
echo $isFullTime

isPartTime=2
echo $isPartTime

empRatePerHr=20

randomCheck=$((RANDOM%3))
echo $randomCheck

if (( $isFullTime == $randomCheck ))
then
     empHrs=8
elif (( $isPartTime == $randomCheck ))
then
     empHrs=4
else
     empHrs=0
fi

salary=$(( $empRatePerHr*$empHrs ))
echo $salary
