#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateinMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$isPartTime )
			empHrs=4
		;;
		$isFullTime )
			empHrs=8
		;;
		* )
			empHrs=0	
		;;
	esac
}

while [[ $totalEmpHr -lt $maxRateinMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	getWorkHours
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$((totalEmpHr*empRatePerHr))
echo TOTAL SALARY: $totalSalary

