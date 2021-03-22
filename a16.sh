#! /bin/bash

clear

if [ $# -ne 0 ]
then
    arr=(`ls *.jpg`) # taking all .jpg files in array
    len=${#arr[*]} # length
    echo before changing
    ls     # printing all content of dir
    for i in `seq 0 1 $(($len-1))`
    do
        mv "${arr[$i]}" "$100$(($i+1)).jpg"
    done
echo after changing 
ls

else
    echo "Please pass the argument for changing the name"

fi
