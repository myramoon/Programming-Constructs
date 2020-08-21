#!/bin/bash 

# Enter 3 numbers do following arithmetic operations and find the one that is maximum and minimum# a.a+b*c # b.a%b+c# c.c+a/b# d.a*b+c

read -p "Enter the first number: " n1
read -p "Enter the second number: " n2
read -p "Enter the third number: " n3

e1=$(( $n1 + $n2 * $n3 ))
e2=$(( $n1 % $n2 + $n3 ))
e3=$(( $n3 + $n1 / $n2 ))
e4=$(( $n1 * $n2 + $n3 ))

	if [ $e1 -ge $e2 ]
	then
		min=$e2
		max=$e1
	else 
		min=$e1
		max=$e2
	fi



	if [ $min -ge $e3 ]
	then
		min=$e3
	elif [ $min -ge $e4 ]
	then
		min=$e4
	else
		min=$min
	fi
	


        if [ $e3 -ge $max ]
        then
                max=$e3 
        elif [ $e4 -ge $max ]
        then
                max=$e4
        else
                max=$max
	fi
	
	echo "The four expressions evaluate to $e1 , $e2 , $e3 , $e4 "
	echo "Minimum is $min and maximum is $max"
	 
	
