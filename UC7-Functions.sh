#!/bin/bash 

PartTime=1
FullTime=2
empRatePerHr=20
numOfWorkingDays=20
MaxRate=100

totalEmpHr=0
totalWorkingDays=0
get=0 
days=0
function getWorkHours()
{
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
}

while [[ $totalEmpHr -lt $MaxRate && $totalWorkingDays -lt $numOfWorkingDays ]]
do
                ((totalWorkingDays++))
		getWorkHours
		get=$(($get+$empHrs))
		days=$totalWorkingDays
		totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalsalary=$(($totalEmpHr*$empRatePerHr))
echo "Total Salary: $totalsalary"
echo "Total Working Hours: $get"
echo "Total Working Days: $days"
