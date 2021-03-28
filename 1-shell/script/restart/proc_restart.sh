#!/bin/bash

for((;;))
do 
	./mproc.sh >> m.log &
	mPID=$!
	echo $mPID
	sleep 10
	kill -9 $mPID
done

