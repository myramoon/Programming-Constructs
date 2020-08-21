#!/usr/local/bin/bash       

#Write a program to:# a.Roll a die and find the number between 1 and 6# b.Repeat the die roll and find the result each time# c.Store the result in a dictionary# d.Repeat till any one of the number has reached 10times# e.Find the number that reached maximum times  and the one that was for minimum times


#DICTIONARIES
declare -A dicenumbers  #to store number of times EACH dice number appeared
declare -i diceresult   #to store all numbers appearing on the dice


dicenumbers[one]=0
dicenumbers[two]=0
dicenumbers[three]=0
dicenumbers[four]=0
dicenumbers[five]=0
dicenumbers[six]=0

count=0			#initialize counter for diceresult array

while (( ${dicenumbers[one]} < 10 &&  ${dicenumbers[two]} < 10 && ${dicenumbers[three]} < 10 && ${dicenumbers[four]} < 10 && ${dicenumbers[five]} < 10 && ${dicenumbers[six]} < 10 )) 
do
diceresult[((count++))]=$(( RANDOM%6 +1 ))

input=${diceresult[$(( $count - 1))]}

case $input in 

		1)
		dicenumbers[one]=$((${dicenumbers[one]} + 1 ));; 
		2)
		dicenumbers[two]=$((${dicenumbers[two]} + 1 ));;
		3)
                dicenumbers[three]=$((${dicenumbers[three]} + 1 ));;
                4)
                dicenumbers[four]=$((${dicenumbers[four]} + 1 ));;
		5)
                dicenumbers[five]=$((${dicenumbers[five]} + 1 ));;
                6)
                dicenumbers[six]=$((${dicenumbers[six]} + 1 ));;

esac
done

echo "Index :" ${!diceresult[@]}
echo "Result of each throw: " ${diceresult[@]}

echo "Number of times each number appeared: " ${dicenumbers[@]}

max_value=10
for k in ${!dicenumbers[@]}
do
        if [[ ${dicenumbers[$k]} -eq $max_value ]]
        then
        echo " $k appeared maximum :10 times "
        fi
done


if [[ ${dicenumbers[one]} < ${dicenumbers[two]} ]]
        then
        min_index="one"                 
        else
        min_index="two" 
        fi

for k in ${!dicenumbers[@]} 
do
        if [[ ${dicenumbers[$min_index]} -gt ${dicenumbers[$k]} ]]
        then
	min_index=$k	
        fi
done
echo " $min_index appeared minimum times:${dicenumbers[$min_index]} "





 
