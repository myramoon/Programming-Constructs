#!/bin/bash 

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

#DRIVER CODE

read -p "Enter a number: " num1

checkresult="$( palindrome_check $num1 )"			#call palindrome function ,receive palindrome state

if [[ $checkresult -eq 1 ]] 	#Print result status
then
	echo " The number is a palindrome. "
else
	echo “Not a palindrome.”
fi



#EXAMPLE
#ITR 1 2002 , mod=2, input 200, reverse= 0*10 + 2=2
#ITR 2 200  , mod=0, input 20 , reverse= 2*10 + 0= 20
#ITR 3 20   , mod=0, input 2  , reverse= 20*10 + 0= 200
#ITR 4 2    , mod=2, input 0  , reverse= 200 *10 + 2= 2002 
