#!/bin/bash
#====================================================
# Author: shi
# Create Date: 2019-02-11
# Description: 
#====================================================

###############################################
#定义变量 var=value  取变量值 $var  
x=10 
y=20.12
name1="bob"
name2=bil
name3=t
name3=tf

echo $x
echo $y
echo $name1
echo $name2
echo $name3

#变量合并
sum=$name1$name2

echo $sum

#双引号内取变量值
echo "i am $name1"

##################################################
#eval command argument
eval ls -l


####################################################
#if
if []; then
echo $x
else
echo $y
fi

#check the dir in home path, if not exist, create it
dirname="mmtest"
fullDirName="$HOME/$dirname"
targetfile="$fullDirName/test.sh"

if [ ! -d $fullDirName ];then
	echo "$fullDirName not exist"
	mkdir $fullDirName
else
	echo "$fullDirName exist"
fi

cp   ./*		    $fullDirName
cat  ./test.sh  >>  $targetfile

#grep a file whether contain the string
targetSTR="boy"
filename="1.txt"
if grep -q $targetSTR  $filename  ;then 
   echo "OK";
else
   echo "NOT OK";
fi

##################################################
#for


#########################################
#timestampe
timestamp=$(date +%s)
echo $timestamp
