#! /bin/bash

clear
file=$1 # Storing command line file
if [ $# -ne 0 ] # Given CLA or not
then
    if [ -f $1 ] # Is File present or not
    then
        if [ -s $1 ] # Is file empty or not
        then                                                 # logic for replacing random 20% of line from code to <---delete--->
            num_lines=`wc -l $1 | cut -d " " -f 1`
            twenty_percent_line=$((num_lines/5))
            random_number=`shuf -i 1-$num_lines -n 1`
            echo $random_number
            random_number=$((random_number+1))
            till_lineNumber_delete=$((random_number+twenty_percent_line))
            num=$((random_number+1))
            sed "${random_number},${till_lineNumber_delete}s/^.*/<--------Delete------->/g" $file > out_a33.txt
            sed "${num},${till_lineNumber_delete}d" out_a33.txt
        else
            echo "Empty file."
        fi
    else
        echo "File does'nt exists"
    fi
    else
    echo "please pass the name of file."
fi

