#!/bin/bash 

while read line
do  
	eval "$line"  
done < 2.txt  

echo $ip
echo $name


source 2.txt

