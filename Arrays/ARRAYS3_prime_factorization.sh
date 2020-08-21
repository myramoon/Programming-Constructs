#!/usr/local/bin/bash   

# Extend the prime factorization program to store all the prime factors of a number into an array and finally display the output.

#ARRAY
declare -a prime

function squareroot()

        {

local input=$1
i=1

        while [ $(( i*i )) -lt $input ]
        do
                i=$(( i+1 ))

        done

        if [[ $((i*i)) -gt $input ]]
        then
                i=$(( i - 1))
        fi

echo $i
}

function getexponent()

{

local number=$1
local sqrt=$2
count=0
        for (( counter=2; counter<=$(( sqrt )); counter=$(( $counter + 1 )) ))
        do
                if [ $(( $number % $counter )) -eq 0 ]
                then
                times=0
                        while [ $(( $number % $counter )) -eq 0 ]
                        do
                        times=$(( times + 1 ))
                        number=$(( $number / $counter ))
                        done
			prime[$((count++))]=$counter
                        echo " $counter ^ $times "
                fi

                if [[ $number -eq 1 ]]
                then
                break 
                fi

        done

        if [[ $number -ne 1 ]]
        then
	prime[$((count))]=$number
        echo "$number ^ 1 "
        fi
}

#DRIVER PROGRAM

read -p "Enter the number whose factors are to be found: " num

echo "Prime factorization of $num is: "

sqrt="$( squareroot $num )"
echo "squareroot" $sqrt
getexponent $num $sqrt

echo "Prime factors"
echo ${prime[@]}
