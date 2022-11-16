#!/bin/bash -x
toss=0
randomCheck=$(($RANDOM%2))
if [ $toss -eq $randomCheck ]
then
     echo "Heads"
else
     echo "Tails"
fi

