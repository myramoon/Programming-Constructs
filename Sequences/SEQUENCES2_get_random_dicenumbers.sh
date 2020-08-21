#!/bin/bash

#Use Random to get dice number between 1 and 6.

dicenum=$(( RANDOM%6 + 1 ))
echo $dicenum
