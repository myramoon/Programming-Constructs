#!/bin/bash -x 

#program that takes a year as input and outputs the year is a leap year or not a leap year.A leap year checks for 4 digit number,divisible by 4 and not 100 unless divisible by 400.


read -p "Enter year: " year
mod=$(( $year % 4 ))
centurymod=$(( $year % 400 ))
century=$(( $year % 100 ))	

	if [ $century -eq 0 ] 
	then
		if [ $centurymod -eq 0 ]
		then
		echo "Century leap year"
		else
		echo "Not a leap year"
		fi
	else
		if [ $mod -eq 0 ]
       	        then
                echo "Leap year"
       	        else
                echo "Not a leap year"
       	        fi

	fi
	


