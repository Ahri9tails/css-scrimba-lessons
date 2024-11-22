#! /bin/bash

#for ((i = 4 ; i < 22 ; i++)); do
#	cp -a ./challenge3 challenge$i
#done


# find all the folder numbers.
# 

numberedFiles=$(find -name "*[0-9]*" | sed 's/[^0-9]//g')
IFS=$'\n'

highestNumber=$(echo "${numberedFiles[*]}" | sort -nr | head -n1)

#highestNumber=$("${numberedFiles[*]}" | sort -nr | head -n1)


nextNumber=$((highestNumber + 1))

cp -a ./lesson$highestNumber lesson$nextNumber

echo "lesson$highestNumber" duplicated to "lesson$nextNumber"


#if [[ $highestNumber > 22 ]]; then
#	echo "greater than 22"
#else
#	echo "less than 22 or equal"
#fi

#echo "$numberedFiles"
