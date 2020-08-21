#! /bin/bash -x

#Take a number from user and check if the number is a prime then show that its palindrome is also prime

#FUNCTIONS
function palindrome_check()
{
local input=$1
number=$input
reverse=0		 	      	       # initialize reverse  0

while [ $input -gt 0 ]		       	       # check number >0	
do
	mod=`expr $input % 10 `	               # get mod 	
	input=`expr $input / 10 `	       # modify input, remove last digit
	reverse=`expr $reverse \* 10 + $mod`   # calculate reverse * 10 + last digit 
done

if [ $number -eq $reverse ]
then
	echo 1
else
	echo 0
fi
}

function prime()
{
local num=$1
check=0							#changes count if number is divisible by any number in range

for (( counter=2; counter<num; counter++ ))
do
	if [ $(( num%counter )) -eq 0 ]			#chk if number is divisible by other numbers
	then
	check=$(( check + 1))
	break						#increment check if number is divisible
	fi
	
done

	if [ $check -eq 0 ]				#if check variable returns not divisible state
	then
		echo 1					#pass pass state
	else 
		echo 0
	fi

}

read -p "Enter a number: " num1

checkresult="$( palindrome_check $num1 )"			#call palindrome function ,receive palindrome state
primeresult="$( prime $num1 )"					#call prime function, receive prime state

if [[ $checkresult -eq 1 ]] && [[ $primeresult -eq 1 ]]		#Print result status
then
	echo " The number is a prime palindrome. "
elif [[ $checkresult -eq 1 ]] && [[ $primeresult -ne 1 ]]
	then
	echo "Palindrome but not prime "
elif [[ $checkresult != 1 ]] && [[ $primeresult -eq 1 ]]
	then
	echo "Not a palindrome but prime"
else
	echo "Neither a palindrome nor prime"
fi


