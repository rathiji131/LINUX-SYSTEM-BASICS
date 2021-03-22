#! /bin/bash

clear # clear the screen 

n1=$1 #storing CLS to variables
op=$2
n2=$3
if [ $# -lt 3 ] 
then
if [ -z $n1  ]
then 
    echo "Please pass three argument through Command line"
elif [ -z $n2 ]
then
    echo "Please enter three arguments"
else 
    echo
fi
else
case $op in # switch case to move directly to user demanded operator
    +)echo " scale =3 ; $n1 + $n2" | bc #adds 
        ;; #terminator
    -)echo " scale =3 ; $n1 - $n2" | bc #substract
        ;;
    x)echo " scale =3 ; $n1 * $n2" | bc #multiplying 
        ;;
    /)echo " scale =3 ; $n1 / $n2" | bc
        ;;
    *)echo " Please enter correct operator" 
        ;;
esac #clsoing of switvh case statement
fi
