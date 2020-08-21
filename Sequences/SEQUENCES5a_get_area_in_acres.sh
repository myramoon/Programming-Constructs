#!/bin/bash

#Calculate area of 25 such plots in acres

read -p "Enter length in feet: " lengthft
read -p "Enter breadth in feet: " breadthft

area_in_meters_25=$(( $lengthft * $breadthft * 2296 / 100000000 * 25 ))

echo "Length in feet is $lengthft , breadth in feet is $breadthft "
echo " Area in acres of 25 such plots is $area_in_meters_25 " 

