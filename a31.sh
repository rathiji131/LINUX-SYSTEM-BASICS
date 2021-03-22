#$ /bin/bash

clear

count=0
IFS=":"  # Internal file separator works as tr ':' ' '
for directory in $PATH # Checking in each dire in PATH variable
do
    count=0 #for checking files count variable 
    echo "Current directory : $directory"  # printing directory name
    for file in $directory/* # accessing file from dir using for loop
    do
        if [ -x $file ] # checking its is executable or not
        then
            count=$(($count + 1)) # if yes increment count
            total_count=$(($total_count + 1)) # increasing total files
        else
            count=$count # if not keep it same
        fi
    done
echo "Current count : $count" #printing count in each folder
done
echo "Total is $total_count" # printing total count

