# Hard Links and Soft Links 


Hard Links:
(1) Original final must be regular file not dir or special file.  
(2) Hard link file and Original file share same inode.  
(3) Delete Original file, Hard link file still works.  

(1) Hard link file and Original file share same content.  

Soft Links:
(1) Original final can be file, dir.  
(2) Different inode. 
(3) Delete Original file, Soft link file cannot work.  

(1) Hard link file and Original file share same content.  

A hard link always points a filename to data on a storage device.
A soft link always points a filename to another filename, which 
    then points to information on a storage device.

硬链接可以理解为，文件备份，内容同步，删除一个，另一个依然有效。
软链接可以理解为，一个指针，内容同步，删除源文件，链接失效。
