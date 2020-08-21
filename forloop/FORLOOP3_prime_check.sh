#!/bin/bash

read -p "Enter a number: " num 		#Take input from user
fail=0					#variable to store number of times number was divisible

for (( counter=2; counter<$num; counter++ ))
do
	if [ $(( num%counter )) -eq 0 ] 	#if number is divisible
	then			
	fail=$((fail + 1 )) 			#update fail
	fi	 
done


if [[ $fail -eq 0 ]] 	#If number hasn’t been divisible, print prime message
then
echo "Number is prime " 
else 
echo "Not a prime number, $num is divisible by $fail numbers less than itself"
fi
