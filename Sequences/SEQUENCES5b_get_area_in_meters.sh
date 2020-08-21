#!/bin/bash

#Rectangular plot of 60ft x 40ft in meters

read -p "Enter the length of plot in feet : " lft 
read -p "Enter the breadth of plot in feet : " bft
areamt=$(( $lft * $bft * 9290304 / 100000000 ))
echo Area in meters is $areamt sq. m
 
