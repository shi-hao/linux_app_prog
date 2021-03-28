#!/bin/bash 

##############################################
# read vars in file
source 1.txt
echo $ip
echo $name

while read line
do  
	eval "$line"  
done < 2.txt  
echo $age
echo $weight
##############################################
# read file content
while read line
do
    echo $line
done <./2.txt
