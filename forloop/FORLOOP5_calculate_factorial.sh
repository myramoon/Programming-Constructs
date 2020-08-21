#! /bin/bash  

read -p "Enter a number: " num

if [[ $num -eq 0 ]]	#If input is 0,factorial becomes 1
then
	factorial=1
fi

for (( counter=1; counter<=$num; counter++ )) 
do
	if [[ $counter -eq 1 ]] 
	then
		factorial=1	#Stores value of 1! 
	else
		factorial=$(( factorial * counter )) #Build up on 1! value to get factorial of higher numbers
	fi

done

echo "Factorial of $num is $factorial "	#Print factorial	

