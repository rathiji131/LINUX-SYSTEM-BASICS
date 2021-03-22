#1 /bin/bash

clear
if [ $# -eq 1 ]
then
    echo $1

else
if [ $# -gt 1 ] #checking number of  CLA  are greater than equal to 1 or not
then
arr=($@) #storing it in array
len=$((${#arr[@]}-1)) #calculating length of array

    for i in `seq 0 $len`
    do
        if [ ${arr[i]} -ge ${arr[i+1]} ] #comparing  two consecutive number 
        then
            temp=${arr[i]} #sorting it in ascending order 
            arr[i]=${arr[i+1]}
            arr[i+1]=$temp
        fi
    done
    if [ $len -ne 0 ] 
    then
        echo "Largest value : ${arr[$len]}" #printing largest value which is last element in array
    fi

else
    echo "No arguments passed"
fi
fi
