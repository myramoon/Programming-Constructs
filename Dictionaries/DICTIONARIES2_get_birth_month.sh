#!/usr/local/bin/bash   

#Generate birth month of 50 individuals between the year 92 and 93.Find all the individuals having birthdays in the same month. Store it to finally print.

#DICTIONARIES
declare -A birthmonth

a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0
j=0
k=0
l=0
m=0

for (( i=0; i<=49; i++ ))
do
birthmonth[$i]=$(( RANDOM%12 + 1 ))
#input=${birthmonth[$i]}

case ${birthmonth[$i]} in
	1)
	january[((a++))]=$i;;
	2)
        february[((b++))]=$i;;
	3)
        march[((c++))]=$i;;
	4)
        april[((d++))]=$i;;
        5)
        may[((e++))]=$i;;
        6)
        june[((f++))]=$i;;
	7)
        july[((g++))]=$i;;
        8)
        august[((h++))]=$i;;
        9)
        september[((j++))]=$i;;
        10)
        october[((k++))]=$i;;
        11)
        november[((l++))]=$i;;
        12)
        december[((m++))]=$i;;

esac

done

#echo ${birthmonth[@]}

echo "Indices of persons having birthdays in respective months : "
echo "JANUARY " ${january[@]}
echo "FEBRUARY" ${february[@]}
echo "MARCH" ${march[@]}
echo "APRIL" ${april[@]}
echo "MAY" ${may[@]}
echo "JUNE" ${june[@]}
echo "JULY" ${july[@]}
echo "AUGUST" ${august[@]}
echo "SEPTEMBER" ${september[@]}
echo "OCTOBER" ${october[@]}
echo "NOVEMBER" ${november[@]}
echo "DECEMBER" ${december[@]}
