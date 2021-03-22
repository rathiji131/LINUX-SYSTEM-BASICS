#! /bin/bash
clear 

arr=($@) # CLA as an array
len=${#arr[@]} #calculating length of array
function recursion #function defination
{
    echo  ${arr[i]} # printing elements passed when function called
}
if [ $# -eq 0 ] #error sms
then
    echo "Pass the argument through command line."
else
for i in `seq 0 $(($len-1))`
do
   recursion ${arr[i]} #function call
done
fi
