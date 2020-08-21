#! /bin/bash 

#A gambler starts with Rs 100 and places Re 1 bet until he/she goes broke i.e. no more money to gamble or reaches the goal of 200. Keeps track of number of times won and number of bets made.

amount=100
wincheck=0
losscheck=0

while [ $amount -ne 0 -a $amount -ne 200 ]
do

result=$(( RANDOM%2 ))	#Result of current gamble
	
	if [ $result -eq 1 ]
	then
		wincheck=$(( wincheck + 1 ))
		amount=$(( amount + 1 ))
	else
		losscheck=$(( losscheck + 1 ))
		amount=$(( amount - 1 ))
	fi
done

echo "Number of wins : $wincheck , number of losses : $losscheck "
echo " balance= $amount "
