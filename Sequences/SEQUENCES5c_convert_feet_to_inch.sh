#!/bin/bash

#1ft=12in then 42in=?ft

oneft=12;
read -p "Enter the ft measurement: " feet
inch=$(( $feet * $oneft ))
echo $feet ft is $inch in

