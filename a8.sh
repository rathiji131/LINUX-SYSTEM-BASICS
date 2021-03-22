#! /bin/bash

clear

str="$@" # Storing CLA as string
len1=$((${#str}-1)) # measuring length of string

for i in `seq 0 $(($len1-1))` # converting string in to array
do
    a[i]=${str:$i:1}
done
len=$((${#a[@]}-1)) #length of array
op=${str:$len1:1} # taking last element of aaray as operator

if [ $# -gt 0 ]
then
case $op in  # according to operator doing operations
    +)  res=0  
        for j in `seq 0 $len`
        do
        res=`expr $res + ${a[$j]}`
        done
        echo addition is $res
        ;;
    -)
        res1=${a[0]}
        for k in `seq 1 $len`
        do
        res1=`expr $res1 - ${a[$k]}`
        done
        echo substraction is $res1
        ;;
    x)
        res2=1
        for l in `seq 0 $len`
        do
        res2=`expr $res2 \* ${a[$l]}`
        done
        echo multiplication is $res2
        ;;
    /)
        res3=${a[0]}
        for m in `seq 1 $len`
        do
        res3=`expr $res3 / ${a[$m]}`
        done
        echo Division is  $res3
        ;;
    *)
        echo "Please enter correct operator"

esac
else
    echo Error : please pass the argument.
    echo usage : bash a8.sh 1234+ 
fi



