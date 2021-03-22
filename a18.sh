#! /bin/bash

clear

cut -d ":" -f1 /etc/passwd > 1.txt # getting all user name in 1.txt 
arr=(`cat 1.txt`) # storing 1.txt in array
arr1=(`cat 1.txt`) 
len=$((${#arr[*]}-1)) # calculating length of array i.e number of users
len1=$((${#arr1[*]}-1))

for i in `seq 0 $len` # sorting algorithm for finding greatest username
do
     if [ ${#arr[$i]} -ge ${#arr[$i+1]} ]
     then
         temp="${arr[$i]}"
         arr[$i]="${arr[$i+1]}"
         arr[$i+1]="$temp"
     fi
done
echo "The Largest name is  : $temp"

for i in `seq 0 $len1` # sorting algorithm for finding lowest username
do
     if [ ${#arr1[$i]} -le ${#arr1[$i+1]} ]
     then
         temp1="${arr1[$i]}"
         arr1[$i]="${arr1[$i+1]}"
         arr1[$i+1]="$temp1"
     fi
done
echo "The shortest name is : $temp1"
