#!/bin/bash -x

n=5
sum=0
for ((i=1; i<=n; i++))
do
   num=$((RANDOM%90+10))
   echo $num
   sum=$(($sum+$num))
done
echo $sum
echo $(($sum/$n))

