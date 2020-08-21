#! /bin/bash 

read -p "Enter the last power of 2 to be displayed: " n

for (( counter=0; counter<=$n; counter++ ))
do
	
	if [ $counter -eq 0 ] 
	then
	value=1				#Calculate zeroth power of 2
	else
	value=$(( value * 2 ))		#Calculate subsequent powers of 2, building up on 	fi				#zeroth power
	

	echo " 2 raised to $counter = $value "   #Print table of powers

done 
printf "\n"
