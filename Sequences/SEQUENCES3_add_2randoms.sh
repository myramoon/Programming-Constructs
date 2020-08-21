#!/bin/bash

#Add two Random dice number and print the result

dice1=$(( RANDOM%6 + 1 ))
dice2=$(( RANDOM%6 + 1 ))
sum=$(( $dice1 + $dice2 ))
echo Numbers are $dice1 and $dice2
echo sum is $sum
