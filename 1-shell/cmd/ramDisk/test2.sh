#!/bin/bash

cur_dir=$pwd

##########################################################
#test ram disk write/read speed
dir=/home/bleach/ramdisk

#create dir and mount
mkdir $dir
sudo mount -t tmpfs -o size=1G tmpfs $dir

#switch to dir
cd $dir

#write speed test
ioping -S64M -L -s4k -W -c 10 .

#read speed test
ioping -A -s16k -c 10 .

#umount the dir
sudo umount $dir

##########################################################
#test disk write/read speed
dir2=/home/bleach/myfile

#switch to dir2
cd $dir2

#write speed test
ioping -S64M -L -s4k -W -c 10 .

#read speed test
ioping -A -D -s16k -c 10 .

##########################################################
#switch to cur_dir
cd $cur_dir
