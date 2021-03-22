#! /bin/bash

clear  #clear the screen

read -p "How many lines of pattern you want to print : " n # printing the massage and reading value of n from command line

for i in `seq  $n` # for loop starts from 1 to n , each time increase i by 1.
do #start of for loop
    for j in `seq $i` # for loop starts from 1 to i , each time j increase by 1
    do
        echo -n "$j " #printing j and stay on same line
    done # end of for loop
    echo # coming to next line
done #end of for loop


