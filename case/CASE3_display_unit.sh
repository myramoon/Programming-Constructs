#!/bin/bash

#Read a number 1,10 ,100 1000 etc and display unit, ten,hundred..
 
read -p "Enter a power of 10 between power 0 and power 8 : " input

	case $input in

		0)
		echo "Unit";;
		1)
		echo "Ten";;
		2)
                echo "Hundred";;
		3)
                echo "Thousand";;
		4)
		echo "Ten Thousand";;
		5)
                echo "Hundred Thousand";;
		6)
                echo "Million";;
		7)
                echo "Ten Million";;
		8)
		echo "Hundred Million";; 
		*)
		echo "Invalid input";;

	esac

printf "\n"
