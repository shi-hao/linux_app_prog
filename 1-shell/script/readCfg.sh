#!/bin/bash 

while read line
do  
eval "$line"  
done < 2.txt  

echo $ip
echo $name



while true
do
	isContinue='y'
	read -p 'continue? [y/n]' isContinue
	echo $isContinue
	
	if [ $isContinue == 'y' ]; then
		break
	fi
done

source 2.txt

