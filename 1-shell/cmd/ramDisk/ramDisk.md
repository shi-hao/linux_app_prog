# Ram Disk  
  
## 什么是Ram Disk  
在日常使用中，可以在linux的RAM上可以创建文件系统，实现在ram上存储文件，以达到  
快速读写文件的目的。    
  
## Ram Disk基本原理  
Ram Disk简单理解，就是在主机的RAM上创建文件系统，可以用来存储文件数据，主要有  
两种类型，ramfs和tmpfs，其实比较容易理解，就是创建一个目录，将这个目录挂载到  
RAM上，正常情况下是挂载到ROM上。  
  
## 好处  
加速数据访问速度，提升性能。  
  
## Ram Disk大小  
tmpfs最大大小不能超过最大RAM的一半，经过在ubuntu16上测试发现，并不是这样。    
tmpfs和ramfs没有大小限制。  
  
创建并挂载了一个ram disk，并不代表被挂载的ram空间已经被使用，使用量的大小以文  
件的大小来确定，如果没有文件，那么用量还是0。  
  
## 如何创建Ram Disk  
(1)查看内存使用情况  
free -g  
  
(2)创建目录  
mkdir /mnt/ramdisk  
  
(3)挂载目录到ram  
mount -t [TYPE] -o size=[SIZE] [FSTYPE] [MOUNTPOINT]  
mount -t tmpfs -o size=512m tmpfs /mnt/ramdisk  

使用df -ah查看挂载的文件系统  
  
(4)添加到fstab  
可选操作，将配置命令添加到fstab，重启设备后，可以自动创建ram disk。  
tmpfs   /mnt/ramdisk  tmpfs   nodev,nosuid,noexec,nodiratime,size=1024M   0   0  
  

## ram disk write/read speed test
(1)create dir and mount
mkdir /media/ram
mount -t tmpfs -o size=1G tmpfs /media/ram/

(2)write speed test
dd if=/dev/zero of=/media/ram/zero bs=4k count=10000

(3)read speed test
dd if=/media/ram/zero of=/dev/null bs=4k count=10000

(4)remove test file
rm /media/ram/zero

