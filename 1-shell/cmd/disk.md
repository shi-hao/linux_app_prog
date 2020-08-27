# 磁盘disk    
    
## 1.磁盘及分区        
fdisk:find disk      
(1)可以查看系统所有的磁盘和分区        
sudo fdisk -l        
        
        
(2)删除分区，新建分区，根据提示选择指令，注意最后一定要输入w保存退出，否则更改不会生效        
sudo fdisk  <disk_name>        
        
d  delete partition        
w  save and exit        
        
        
## 2.创建文件系统    
对于用户而言，在磁盘上创建文件系统后，才能正常使用，即格式化磁盘。      
  
mkfs:make file system        
mkfs -t <file_system_type>  <disk>        
可以格式化磁盘，也可以是某个分区        
        
        
## 3.挂载磁盘        
UNIX系统中，所有可访问的文件都是组织在根目录下，即/下面，mount指令可以将设备上  
的文件系统加载到根目录之下的某个路径下，以供访问，umount的作用则是取消加载。    
  
mount/umount      
mount   <disk_partition>   <file_dir>        
umount  <disk_partition>        
        
## 4.查看磁盘文件系统的挂载路径        
df  -lh        
