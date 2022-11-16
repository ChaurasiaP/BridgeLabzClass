#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20

totalSalary=0

for ((day=1; day<=$numOfWorkingDays; day++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$isFullTime )
			emphrs=8
		;;
		$isPartTime )
			emphrs=4
		;;
		* )
			emphrs=0
		;;
	esac
	salary=$(($emphrs*$empRatePerHr))
	totalSalary=$(($salary+$totalSalary))
done
echo Monthly Wage: $totalSalary

