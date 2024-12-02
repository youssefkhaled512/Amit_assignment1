#!/bin/bash

N=8
sum=0

for (( i=1; i<=$N; i++ ))
do
    sum=$((sum + i))
done

echo "The sum of integers from 1 to $N is: $sum"