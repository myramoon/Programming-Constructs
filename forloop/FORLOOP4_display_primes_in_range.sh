#!/bin/bash

read -p "Enter the lower limit: " lowerlimit
read -p "Enter the upper limit: " upperlimit

for (( num=$lowerlimit; num<=$upperlimit; num++ ))

do
check=0		#Variable to store count if number is divisible

	for (( counter=2; counter<$num; counter++ ))
	do
        if [[ $(( num%counter )) -eq 0 ]] 
        then
        	check=$(( check + 1)) #increment if number is divisible
        fi
	done

if [ $check -eq 0 ] #for primes,check remains 0
then
	echo -n "$num " #Print primes
fi


done
