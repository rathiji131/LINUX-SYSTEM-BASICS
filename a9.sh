#! /bin/bash

clear

read -p "upto which number you want to print fibonasi series: " n #reading number form user 
if [ $n -lt 0 ] #checking positive or not
then 
    echo "Please enter positive numbers only ."
else
n1=0
n2=1
next_term=0
echo $n1 # printing first two numbers as it is 
echo $n2
while [ $next_term -lt $n ] #checking next term is greater than given number or not
do
next_term=$(($n1+$n2)) #logic for fibonacci series
n1=$n2
n2=$next_term
if [ $next_term -le $n ] # if next term is less than given number then print
then
echo $next_term
fi
done
fi
