#!/bin/bash 

#查看磁盘及分区
#可以查看系统所有的磁盘和分区
sudo fdisk -l


#删除分区，新建分区，根据提示选择指令，注意最后一定要输入w保存退出，否则更改不会生效
sudo fdisk  <disk_name>

d  delete partition
w  save and exit

#格式化磁盘


#挂载磁盘
#磁盘接入系统后，将其挂载到文件系统的某个路径下，才能使用
mount   <disk_partition>   <file_dir>
umount  <disk_partition>


#查看磁盘挂载到文件系统中的位置（路径）
df
