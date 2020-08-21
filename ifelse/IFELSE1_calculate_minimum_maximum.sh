#!/bin/bash

# Write a program that reads 5 Random 3 Digit values and then outputs the minimum and the maximum value.

v1=$(( RANDOM%900 + 100 ))
v2=$(( RANDOM%900 + 100 ))  # generate 3digit numbers and store in variable
v3=$(( RANDOM%900 + 100 ))
v4=$(( RANDOM%900 + 100 ))
v5=$(( RANDOM%900 + 100 ))

        if [ $v1 -ge $v2 ]
        then
                min=$v2	    #compare and store least in min, modify min in subsequent ifs
        else
                min=$v1
        fi

        if [ $min -ge $v3 ]
        then
                min=$v3

        else
                min=$min
        fi


        if [ $min -ge $v4 ]
        then
                min=$v4

        else
                min=$min
        fi


        if [ $min -ge $v5 ]
        then
                min=$v5

        else
                min=$min
        fi



        if [ $v1 -ge $v2 ]
        then
                max=$v1
        else
                max=$v2  #compare and store maximum in max, modify min in subsequent ifs
        fi

        if [ $max -ge $v3 ]
        then
                max=$max
        else
                max=$v3
        fi

         if [ $max -ge $v4 ]
        then
                max=$max
        else
                max=$v4
        fi


         if [ $max -ge $v5 ]
        then
                max=$max
        else
                max=$v5
        fi



echo "the five numbers are $v1 , $v2 , $v3 , $v4 , $v5  "
echo "minimum is $min and maximum is $max"


