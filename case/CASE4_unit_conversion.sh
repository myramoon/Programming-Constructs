#!/bin/bash

#Write a program that takes user inputs and does unit conversion of different length units.#a.Feet to inch#b.Inch to feet#c.Feet to meter#d.Meter to feet

read -p " Enter 1 if you want conversion from feet to inches
	  Enter 2 if you want conversion from inch to feet
	  Enter 3 if you want conversion from feet to meters
	  Enter 4 if you want conversion from meter to feet : " choice 


	case $choice in

		1)
		read -p "Enter measure in feet: " feet
		inch=$(( $feet * 12 ))
		echo -n " $feet ft is $inch in " ;;
		
		2)
		read -p "Enter measure in inches: " inch
                feet=$(( $inch / 12 ))  
                echo -n " $inch in is $feet ft " ;;

		3)
		read -p "Enter measure in feet: " feet
                meter=$(( $feet * 3048 / 10000 ))  
                echo -n " $feet ft is $meter m " ;;

		4)
		read -p "Enter measure in meter: " meter
                feet=$(( $meter * 10000 /3048 ))  
                echo -n " $meter m is $feet ft " ;;

		*)
		echo -n "Not a valid input";;

	esac

	printf "\n"
