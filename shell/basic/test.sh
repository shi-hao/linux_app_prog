#!/bin/bash

#定义变量 var=value  取变量值 $var  
x=10 y=20
dollar=$

#shell的变量是字符串变量
s=$x$y'$'
ss=$x'1234'

#eval command argument
eval ls -l


#if
if 1 ; then
echo $x
else
echo $y
fi

#for


echo $s
echo $ss
echo $dollar
