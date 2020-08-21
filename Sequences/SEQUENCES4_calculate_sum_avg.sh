#!/bin/bash

#Write a program that reads 5 random 2 digit values then find their sun and average.
r1=$(( RANDOM%90 + 10 ))	    # generate 2digit numbers and store in variable.
r2=$(( RANDOM%90 + 10 ))
r3=$(( RANDOM%90 + 10 ))
r4=$(( RANDOM%90 + 10 ))
r5=$(( RANDOM%90 + 10 ))
	sum=$(( $r1 + $r2 + $r3 + $r4 + $r5 ))
	avg=$(( $sum / 5 ))
echo the five numbers are $r1 , $r2 , $r3 , $r4 , $r5
echo sum is $sum
echo average is $avg
