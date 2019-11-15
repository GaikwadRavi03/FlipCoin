#!/bin/bash -x

echo "welcome"
echo -e "Entert= the no of time you want to flip coin : \c" 
read number
coins=2
declare -A dictionary
H=0
T=0

function coin() {
for (( i=1; i<=$number; i++ ))
do
str=""
 for(( j=0; j<$coins; j++ ))
 do
   random=$(( RANDOM % 2 ))
	if [ $random -eq 1 ]
	then
	   str=$str"H"
	else
            str=$str"T"
	fi
  done
echo coins : $str
dictionary["$str"]=$(( ${dictionary["$str"]} + 1 ))
done
}

coin
echo "${!dictionary[@]} : ${dictionary[@]}"
