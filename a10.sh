#1 /bin/bash
clear

arr=($@) # taking CLA as an array
if [ $# -gt 0 ]
then
for i in `seq 0 $((${#arr[@]}-1))` # runs till the length of array
    do
        len[i]=${#arr[i]} #calculating the length of word
        echo "length of string (${arr[i]})   - ${len[i]}" #printing it in given format
    done

else
    echo "No Arguments passed . Please pass argument to calculate lengt of it."
fi
