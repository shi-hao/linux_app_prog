#!/bin/bash
#====================================================
# Author: shi
# Create Date: 2019-02-11
# Description: 
#====================================================

###############################################
#定义变量 var=value  取变量值$var,
#变量名和值之间不能有空格！！！！！！！！！！！！！！！！！  
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


###################################################
#jude the shell command whether succeed through get $?
find dd   #
if [ $? -eq 0 ]; then
    echo OK
else
    echo FAIL
fi

#get the shell command output
#ls -l

#method 1
output_str=$(ls -l)
echo $output_str

#method 2
#eval 相较于 method 1的好处在于，shell指令依然会在命令行输出
output_str=eval ls -l
echo $output_str
