#!/bin/bash

# program to simulate a coin flip and print out “Heads” or Tails accordingly.

head=1;
status=$(( RANDOM%2 ))

	if [ $status -eq $head ]
	then
		echo "Flip result : Heads"
	else
		echo "Flip result : Tails"
	fi
