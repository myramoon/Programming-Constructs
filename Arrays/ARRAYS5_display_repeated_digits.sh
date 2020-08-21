#!/usr/local/bin/bash   

#Take a range from 0-100,find digits that are repeated like 33,77etc and store them in an array.

#ARRAY
declare -a digitarray
declare -a numbers

read -p "Enter lower limit " lowerlimit
read -p "Enter upper limit " upperlimit

count=0

for (( i=$lowerlimit; i<=$upperlimit; i++ ))
do
divisor=1

	while [ $(( $i / $divisor )) -ge 10 ] 		#find divisor to separate digits of respective numbers
		do
		divisor=$(( $divisor * 10 ))
		done

length=${#divisor}
input=$i
	
	for (( k=0; k<$length; k++ ))
		do
		digitarray[((count++))]=$(( $input / $divisor )) 	#compose the array of digits 
		input=$(( $input % $divisor ))
		divisor=$(( $divisor / 10 ))
		done
	
done

arraylength=${#digitarray[@]}
x=0

for (( j=1; j<$arraylength; j=(($j+2)) ))
do
 if [[ ${digitarray[(($j - 1))]} -eq ${digitarray[(($j))]} ]]		#compare consecutive indices to find the repeated digits
 then
	numbers[((x++))]=${digitarray[(($j - 1))]}
	numbers[((x++))]=${digitarray[(($j))]}
 fi
done

echo "Numbers in which digits are repeated twice: "
echo ${!numbers[@]}							#Index of array
echo ${numbers[@]}							#array of repeated digits in the range
