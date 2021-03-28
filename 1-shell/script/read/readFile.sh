#!/bin/bash 

##############################################
# read vars in file
source 2.txt

#while read line
#do  
#	eval "$line"  
#done < 2.txt  

echo $ip
echo $name

echo $age
echo $weight


##############################################
# read file content
while read line
do
    echo $line
done <./2.txt
