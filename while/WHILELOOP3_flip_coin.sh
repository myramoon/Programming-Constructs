#! /bin/bash 

nheads=0
ntails=0

while [ $nheads -lt 11 -a $ntails -lt 11 ]  #loop runs till either heads or tails wins 11 times
do
status=$(( RANDOM%2 ))			    #check head or tail

	if [ $status -eq 1 ]
	then
	nheads=$(( nheads + 1 ))	    #if heads, increase counter for heads
	else
	ntails=$(( ntails + 1 ))	    #if tails, increase counter for tails

	fi

done
echo " HEADS occurred $nheads times , TAILS occurred $ntails times"	#print result
