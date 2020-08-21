#! /bin/bash

read -p "Enter the last power of 2 to be displayed: " n

count=0

while [ $count != $(( n + 1 )) ]
do
	if [ $count -eq 0 ]
	then
	value=1				#Get 0th power of 2 i.e 1
	else
	value=$(( value * 2 ))		#Multiple current value by 2 to get higher powers
	fi
echo -n " 2 raised to $count is $value " #Print result
printf "\n"
(( count++ ))
done
 
