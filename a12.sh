#! /bin/bash

clear

arr=($@) # taking CLA as an array
len=$((${#arr[*]}-1)) #number of CLA
var=${arr[0]}
if [ $# -eq 0 ]
then 
    echo "Please pass the argument through command line"
    echo "usage : a12.sh -a/-d 4 23 6 5 8 "
else
case $var in
    -a)    #sorting algorithm for ascending 
        for j in `seq $len -1 1`
        do
            for i in `seq 1 $j`
            do
                if [ ${arr[i]} -ge ${arr[$(($i+1))]} ]
                then
                    temp=${arr[i+1]}
                    arr[i+1]=${arr[i]}
                    arr[i]=$temp
                fi
            done
        done
        echo "Ascending array is : "
       
        for i in `seq 1 $len`
        do
            echo -n "${arr[i]} "
        done
        echo
        ;;
    -d) #sorting algorithm for descending
        for j in `seq $len -1 1`
        do
            for i in `seq 1 $j`
            do
                if [ ${arr[i]} -le ${arr[$(($i+1))]} ]
                then
                    temp=${arr[i+1]}
                    arr[i+1]=${arr[i]}
                    arr[i]=$temp
                fi
            done
        done
        echo "Descending array is :  "
        for i in `seq 1 $len`
        do
            echo -n "${arr[i]} "
        done
        echo
        ;;
     *)
         echo "please pass the choice"
esac
fi

