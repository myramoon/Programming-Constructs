#!/bin/bash

#Read a number and display the week day (Sunday,Monday..).

read -p "Emter a number: " digit
num=$(( $digit%7 + 1 ))

	if [ $num -eq 1 ]
	then
		echo "Monday"
	elif [ $num -eq 2 ]
	then
		echo "Tuesday"
	elif [ $num -eq 3 ]
        then
                echo "Wednesday"
	elif [ $num -eq 4 ]
        then
                echo "Thursday"
	elif [ $num -eq 5 ]
        then
                echo "Friday"
	elif [ $num -eq 6 ]
        then
                echo "Saturday"
	else
		echo "Sunday"
	fi

