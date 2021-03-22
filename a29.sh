#! /bin/bash

clear   
df | cut -d " " -f1 | tr [:space:] '\n' > out_a29.txt # fetching all userIds in an text file
file_system=(`cat /home/emertxe/assignment/out_a29.txt`) #storing that file in array
echo ${file_system[@]} 
len=$((${#file_system[@]}-1)) # calculating length of array
#echo $len

df | tr -s " " | tr '%' " "| cut -d " " -f5 > out_a299.txt # fetching all userIds in an text file
memory_use=(`cat /home/emertxe/assignment/out_a299.txt`) #storing that file in array
echo ${memory_use[@]} 

for i in `seq 1 $len` 
do
if [ ${memory_use[$i]} -gt 90 ] # checking used space is greater than 90%  or not same as less than 10% free space remaining
then
   echo "File-system ${file_system[$i]} have less than 10% free space" # if yes then print it
fi
done
