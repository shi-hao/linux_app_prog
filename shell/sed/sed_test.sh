#!/bin/bash
#====================================================
# Author: shi
# Create Date: 2019-02-12
# Description: 
#====================================================

# Let’s take an plain text file, input.txt, that looks like this
# 
# PATTERN-1
# First line of unimportant text
# Second line of unimportant text
# PATTERN-2
# Some more texts (may/ mayn't be important!)
# 
# We want to delete some of the lines from the file using the command line stream editor, sed.
# 
# 1. Use the following command to delete the lines lying between PATTERN-1 and PATTERN-2 , excluding the lines 
# containing these patterns:
# 
# sed '/PATTERN-1/,/PATTERN-2/{//!d}' input.txt
# 
# If you want to modify the file itself, instead of just the file stream, include the “-i” flag after sed.
# 
# 2. Use the following command to delete the lines lying between PATTERN-1 and PATTERN-2 , including the lines
# containing these patterns:
# 
# sed '/PATTERN-1/,/PATTERN-2/d' input.txt
# 
# 3. To delete all the lines after PATTERN-2, use this
# 
# sed '/PATTERN-1/,$d' input.txt
# 
# 4. To delete lines, say 2 through 4 (if you know the correct line numbers, of course!), use this
# 
# sed '2,4d' input.txt
# 
# Here is a good sed reference.

startSTR="#start"
endSTR="#end"

#if using shell variable in sed, please using "" not ''
sed "/$startSTR/,/$endSTR/d" 1.txt > 2.txt

#this also works
#sed '/#start/,/#end/d' 1.txt > 2.txt
