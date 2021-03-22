#! /bin/bash # she-bang operator

clear  # clear the screen
read -p "enter value of n : " n #reading value from user
k=1 # initializing k

for i in `seq $n` # for loop from 1 to n and increasing it by 1
do # start of for loop
    for j in `seq $i` # for loop starting from 1 to i each  time increase it bye 1
    do
        echo -n "$k " #printing k
        k=$(($k+1)) #increamenting k by 1
    done
echo # new line
done # end of for loop


