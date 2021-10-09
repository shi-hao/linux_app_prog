#!/bin/bash
echo 'test'

echo '1920-09-10' | grep -E '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'

# grep float numbers
# -E
# Use extended regex.
# 
# -o
# Return only the matches, not the context
# 
# [+-]?[0-9]+([.][0-9]+)?+
# Match numbers which are identified as:
# 
# [+-]?
# An optional leading sign
# 
# [0-9]+
# One or more numbers
# 
# ([.][0-9]+)?
# An optional period followed by one or more numbers.
echo "2.5 test. test -50.8 4.90 88.0" | grep -Eo '[+-]?[0-9]+([.][0-9]+)?'
