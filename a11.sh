#! /bin/bash

clear

for i in `seq 1 8` # for loop for row
do
    for j in `seq 1 8` # for loop for column
    do
        if [ $(($i%2)) -eq 0 ] # if even number of row 
        then
            if [ $(($j%2)) -eq 0 ] #and if even number of column
            then
                echo -e -n "\e[47m" " " # print white box
      
            else
                echo -e -n "\e[40m" " " # else black box 
               
            fi
        fi

        if [ $(($i%2)) -ne 0 ] # if odd row
        then
            if [ $(($j%2)) -ne 0 ] #and odd column 
            then
                echo -e -n "\e[47m" " " #then print white box
                
            else
                echo -e -n "\e[40m" " " # else  print black box
                
             fi
         fi

done
echo
done
echo -e -n "\e[0m" " " # for normal color
