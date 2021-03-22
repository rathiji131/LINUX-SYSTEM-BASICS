#! /bin/bash

clear  
var=$1
echo $len
r=0
rev_num=0
if [ $# -eq 0 ]
then
    echo "No argument passed."
elif [ $(($var/10)) -eq 0 ] #checking single digit or not
then
    echo "Pass multidigit number!!"
else
while [ $var -ne 0 ] #checking condition till var not equal to zero
do
    r=`echo $var%10 | bc` # taking remainder using mod operator
    # echo -n $r
    rev_num=`expr $(($(($rev_num * 10)) + $r))` 
    var=`echo $var/10 | bc` #taking quotient in same var
done

echo $rev_num #printing reverse number
fi
