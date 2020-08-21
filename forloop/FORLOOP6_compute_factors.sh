#! /bin/bash     

#FUNCTIONS

function squareroot() #Gets square root of user input
{
local input=$1
i=1

	while [ $(( i*i )) -lt $input ]
	do
		i=$(( i+1 ))

	done

	if [[ $((i*i)) -gt $input ]]
	then
		i=$(( i - 1))
	fi

echo $i		
}


function getexponent() #gets power of factor

{
local number=$1 #user input
local sqrt=$2   #square root of the input

for (( counter=2; counter<=$(( sqrt )); counter=$(( $counter + 1 )) ))
do
	if [ $(( $number % $counter )) -eq 0 ]
	then						#If current number is a multiple,initialize times,which stores power of the factor
	times=0		
        
	while [ $(( $number % $counter )) -eq 0 ]
        	do
        	times=$(( times + 1 ))			#find the power of $counter dividing it
        	number=$(( $number / $counter ))	#Update number
       		done
	
	echo " $counter ^ $times "			#print result of current factor
	fi
		
		if [[ $number -eq 1 ]]			#if user input is 1 or the updated number became 1,return to main code
		then
		break
		fi
	done
	
	if [[ $number -ne 1 ]]
	then						#If the updated number is still non zero,the number must be prime and greater than squareroot
	echo "$number ^ 1 "				#Print the remaining prime 
	fi
}

read -p "Enter the number whose factors are to be found: " num

echo "Prime factorization of $num is: "

sqrt="$( squareroot $num )"				#Get squareroot of input
echo "squareroot" $sqrt
getexponent $num $sqrt					#Get power of factors
