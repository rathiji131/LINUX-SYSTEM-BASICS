#! /bin/bash
clear
file=$1 #Pass file from TEXT folder names.txt 

   if [ -f /home/emertxe/TEXT/$file ] # checking file is present or not
   then
       len=`wc -c /home/emertxe/TEXT/$file | cut -d ' ' -f1` # length of file
       echo "lenghth of file is : "$len
       if [ $len -gt 0 ] # checking is it empty or not
       then
            echo "1 - Lower to Upper"
            echo "2 - Upper to Lower"
            read -p "Please select option : " op
            #cat /home/emertxe/assignment/out_a22.txt
            case $op in
            1) echo Before changing to upper #script for changing the file from lower to upper
               cat /home/emertxe/TEXT/$file
               cat /home/emertxe/TEXT/$file | tr [a-z] [A-Z] > out_a22.txt
               echo after changing to upper
               cat /home/emertxe/assignment/out_a22.txt
               ;;
            2) echo before changing lower # script for changing the content of file from upper to lower
               cat /home/emertxe/TEXT/$file
               cat /home/emertxe/TEXT/$file | tr [A-Z] [a-z] > out_a22.txt
               echo after changing to lower
               cat /home/emertxe/assignment/out_a22.txt
               ;;
            *)   echo "Please enter correct option!!"
               ;;
            esac
        else 
            echo "No Content inside a file."
        fi
    else
        echo "File does not exits"
    fi
