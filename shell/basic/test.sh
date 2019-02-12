#!/bin/bash
#====================================================
# Author: shi
# Create Date: 2019-02-11
# Description: 
#====================================================

###############################################
#定义变量 var=value  取变量值 $var  
x=10 y=20
dollar=$

#shell的变量是字符串变量
s=$x$y'$'
ss=$x'1234'

echo $s
echo $ss
echo $dollar

##################################################
#eval command argument
eval ls -l


####################################################
#if
if 1 ; then
echo $x
else
echo $y
fi

#check the dir in home path, if not exist, create it
if [ ! -d $HOME"/mmtest" ];then
	echo $HOME"/mmtest not exist"
	mkdir $HOME/mmtest
else
	echo $HOME"/mmtest exist"
fi

cp   ./*  $HOME/mmtest
cat  ./test.sh >> $HOME/mmtest/test.sh

#grep
string='boy2'
filename='1.txt'
if grep -q $string $filename  ;then 
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
