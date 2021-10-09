#!/bin/bash

cat $1  | grep 'Mbits/sec$' | awk '{print $7}' > spd.log
