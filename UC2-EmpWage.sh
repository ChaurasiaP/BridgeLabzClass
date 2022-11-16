#!/bin/bash -x
isPresent=0
randomCheck=$((RANDOM%2))

if (( isPresent == $randomCheck ))
then
          emphrs=8
          empRatePerHr=20
          echo salary=$(($emphrs*$empRatePerHr))
else
          echo salary=0
fi
echo $salary  
