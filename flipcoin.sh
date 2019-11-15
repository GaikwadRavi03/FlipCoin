#!/bin/bash

echo -e "enter the times to toss coin \c"
read num
Head=0
Tail=0

for ((i=0; i<$num; i++))
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		 ((Head++))
	else
		 ((Tail++))
	fi
done

declare -A Coins
Coins[((Head))]=$Head
Coins[((Tail))]=$Tail
echo ${Coins[@]}

h=$(($Head*100))
headper=$(($h/$num))
t=$(($Tail*100))
tailper=$(($t/$num))
echo "head % : $headper , tails % : $tailper "
