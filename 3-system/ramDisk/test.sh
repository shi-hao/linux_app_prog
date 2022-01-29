#!/bin/bash

#test ram disk write/read speed
dir=/home/bleach/ramdisk

#create dir and mount
mkdir $dir
mount -t tmpfs -o size=1G tmpfs $dir

#write speed test
dd if=/dev/zero of=$dir/zero bs=4k count=10000

#read speed test
dd if=$dir/zero of=/dev/null bs=4k count=10000

#remove test file
rm $dir/zero

#umount the dir
umount $dir

#test disk write/read speed
dir2=/home/bleach/myfile

#write speed test
dd if=/dev/zero of=$dir2/zero bs=4k count=10000

#read speed test
dd if=$dir2/zero of=/dev/null bs=4k count=10000

#remove test file
rm $dir2/zero
