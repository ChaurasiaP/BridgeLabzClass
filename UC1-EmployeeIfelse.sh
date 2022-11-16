#!/bin/bash -x
isPresent=1
randomCheck=$((RANDOM%2))
#will check if isPresent value is equal 
#to random value or not
if [ $isPresent -eq $randomCheck ]
then
     echo "Employee is Present"
else 
      echo "Employee is Absent"
fi
