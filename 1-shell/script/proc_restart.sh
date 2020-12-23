#!/bin/bash

for((;;))
do 
	#excute proc  >> proc.log
	mPID=$!
	echo $mPID
	sleep 10
	#kill $mPID
done

