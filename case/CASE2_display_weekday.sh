#!/bin/bash

#Read a number and display the week day(Sunday, Monday..)

read -p "Enter a number: " num
range=$(( $num%7 + 1 ))

	case $range in
		1)
		echo "Monday";;
		2)
		echo "Tuesday";;
		3)
		echo "Wednesday";;
		4)
		echo "Thursday";;
		5)
		echo "Friday";;
		6)
		echo "Saturday";;
		7)
		echo "Sunday";;
	# Negative number
		*)
		echo "Not a valid input";;
 	esac
