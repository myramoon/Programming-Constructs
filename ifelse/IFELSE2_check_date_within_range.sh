#! /bin/bash

# Program that takes day and month from the command line and prints true if day of month is between March 20 and June 20,false otherwise.

read -p "Enter the date and month in mmdd format : " input

	if [ $input -le 0331 ] && [ $input -ge 0320 ]
		then
		echo "True"
	else
		if [ $input -le 0430 ] && [ $input -ge 0401 ]	
		then
		echo "True"
		else
			if [ $input -le 0531 ] && [ $input -ge 0501 ]
			then
			echo "True"
			else
				if [ $input -le 0620 ] && [ $input -ge 0601 ]
	 			then
					echo "True"
				else
			                echo "False"
				fi
			fi
		fi
        fi
				




				


