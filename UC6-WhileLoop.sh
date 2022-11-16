#!/bin/bash -x

PartTime=1
FullTime=2
RatePerHr=20
numOfWorkingDays=20
MaxRate=100

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $MaxRate && $totalWorkingDays -lt $numOfWorkingDays ]]   #-lt means less than
do
		((totalWorkingDays++))
		randomCheck=$((RANDOM%3))
		case $randomCheck in
					$FullTime )
						empHrs=8
					;;
					$PartTime )
						empHrs=4
					;;
					* )
						empHrs=0
					;;
		esac

		totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalsalary=$(($totalEmpHr*$RatePerHr))
echo $totalsalary
