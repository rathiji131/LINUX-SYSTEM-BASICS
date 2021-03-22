#! /bin/bash

clear

username=$1

cat /etc/passwd | cut -d ":" -f1 | tr [:space:] '\n' > out_a32.txt # fetching all user names in an text file

arr=(`cat /home/emertxe/assignment/out_a32.txt`) #storing that file in array

flag=0
flag1=0
len=${#arr[@]} # calculating length of array

if [ $# -eq 0 ] # checking CLA is 0 or not
then
    echo "Error : Please pass the argument through command line"
else
for i in `seq 0 $len` 
do
if [ "$username" == "${arr[$i]}" ] # checking user name is present or not
then
    flag=1  # raise flag=1 if present
else 
    echo 
fi
done

# printing acoording to flag
if [ $flag -eq 1 ]
then
    echo "$username is present"
else
    echo "$username is  not present "
fi
fi
