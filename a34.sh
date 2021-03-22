#! /bin/bash

clear

#reading height n weight from user
read -p "Enter your height in meter : " m
read -p "Enter your weight : " w

#calculating BMI
deno=`echo "scale=2 ; $m*$m" | bc`
BMI=`echo "scale=2 ; $w/$deno" | bc`
#echo $BMI

#Comapring in which section that BMI Lie
underweight=$(echo "$BMI<=18.5" | bc)
normal=$(echo "$BMI<=24.9" | bc)
overweight=$(echo "$BMI<=29.5" | bc)

if [ $underweight -eq 1 ]
then
    echo "Your Underweight."
elif [ $normal -eq 1 ]
then
        echo "You are normal."   
elif [ $overweight -eq 1 ]
then
        echo "You are overweight."
else
        echo "Your are Obuse"
fi

