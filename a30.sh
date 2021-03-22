#! /bin/bash

clear
num1=$1
num2=$2
count=0
count1=0   
cat /etc/passwd | cut -d ":" -f3 | tr [:space:] '\n' > out_a30.txt # fetching all userIds in an text file

arr=(`cat /home/emertxe/assignment/out_a30.txt`) #storing that file in array
# echo ${arr[@]} 

len=$((${#arr[@]}-1)) # calculating length of array
if [ $# -eq 0 ]
then
for i in `seq 0 $len` 
do
if [ ${arr[$i]} -ge 500 ] # checking userid is greater than first given number or not 
then
    if [ ${arr[$i]} -le 10000 ] # checking given sencod user id or not
    then
        count=$(($count + 1)) # incrementing counter
    else 
        count=$count # if not keep counter as it is
    fi
fi
done

echo -n total count of user ID between 500 to 10000 is : 
echo " $count" # printing count

else
for i in `seq 0 $len` 
do
if [ ${arr[$i]} -ge $num1 ] # checking userid is greater than given number or not
then
    if [ ${arr[$i]} -le $num2 ] # checking userid is less than 2nd given number or not
    then
        count1=$(($count1 + 1))
    else 
        count1=$count1
    fi
fi
done
echo -n total count of user ID between $num1 to $num2 is : 
echo " $count1"
fi

