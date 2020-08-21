#!/bin/bash

#Read a number 1, 10, 100, 1000 etc and display unit ,ten, hundred..

read -p "Enter a power of 10 between power 0 and power 8 : " input

	if [ $input -eq 0 ]
	then
		echo "Unit"
	elif [ $input -eq 1 ]
	then
		echo "Ten"	
     	elif [ $input -eq 2 ]	
	then
		echo "Hundred"
	elif [ $input -eq 3 ]
	then
		echo "Thousand"
        elif [ $input -eq 4 ]
	then
		echo "Ten Thousand"
        elif [ $input -eq 5 ]
	then
		echo "Hundred Thousand"
        elif [ $input -eq 6 ]
	then
		echo "Million"
        elif [ $input -eq 7 ]
	then
		echo "Ten Million"	
        elif [ $input -eq 8 ]
	then
		echo "Hundred Million"
	else
		echo "Invalid input"
	fi

	

#printf "\n"

