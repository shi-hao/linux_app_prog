#!/bin/bash

###################################
# Split string
mystr="good bad ugly"


# IFS variable is pre-defined seperators
OLD_IFS=$IFS

IFS=" " #set the seperators to blank space 

arr=($mystr)
echo ${arr[0]}
echo ${arr[1]}

IFS=$OLD_IFS #reset the seperators
