# Create a RAM disk in Linux  
There are many reasons for creating a memory based file system in Linux, not  
least of which is to provide a near zero latency and extremely fast area to  
story files. A prime use of a RAM disk is for application caching directories  
or work areas.  
  
There are two main types of RAM disk which can be used in Linux and each have  
their own benefits and weaknesses:  
  
ramfs  
tmpfs  
  
See my other post for the differences between ramfs and tmpfs.  
  
Check the amount of free RAM you have left on your machine before  
creating a RAM disk. Use the Linux command free to see the unused RAM.  
The below is an example of a 31GB of ram in a production server.  
  
free -g  
total used free shared buffers cached  
Mem:   31    29   2    0      0       8  
-/+ buffers/cache: 20 11  
Swap:  13    6    7  
  
The free command shows the amount of RAM availale on your  
system in addition to the amount of memory used, free and used  
for caching. SWAP space is also displayed and shows if your  
system is writing memory to disk.  
  
Create a folder to use as a mount point for your RAM disk.  
  
mkdir /mnt/ramdisk  
  
Then use the mount command to create a RAM disk.  
  
mount -t [TYPE] -o size=[SIZE] [FSTYPE] [MOUNTPOINT]  
  
Substitute the following attirbutes for your own values:  
  
[TYPE] is the type of RAM disk to use; either tmpfs or  
ramfs.  
[SIZE] is the size to use for the file system. Remember  
that ramfs does not have a physical limit and is  
specified as a starting size.  
[FSTYPE] is the type of RAM disk to use; either  
tmpfs, ramfs, ext4, etc.  
  
Example:  
  
mount -t tmpfs -o size=512m tmpfs /mnt/ramdisk  
  
You can add the mount entry into /etc/fstab to make  
the RAM disk persist over reboots. Remember  
however, that the data will disappear each time the  
machine is restarted.  
  
vi /etc/fstab  
  
tmpfs       /mnt/ramdisk tmpfs  
nodev,nosuid,noexec,nodiratime,size=1024M   0 0  
  
See my other post for the differences between ramfs  
and tmpfs.  
  
  
# The Difference Between a tmpfs and ramfs RAM Disk  
There are two file system types built into most modern Linux distributions  
which allow you to create a RAM based storage area which can be mounted and  
used link a normal folder.  
  
Before using this type of file system you must understand the benefits and  
problems of memory file system in general, as well as the two different types.  
The two types of RAM disk file systems are tmpfs and ramfs and each type has  
it’s own strengths and weaknesses.  
  
See my other post for details on how to create a RAM disk in Linux.  
What is a memory based file system (RAM disk)?  
  
A memory based file system is something which creates a storage area directly  
in a computers RAM as if it were a partition on a disk drive. As RAM is a  
volatile type of memory which means when the system is restarted or crashes  
the file system is lost along with all it’s data.  
  
The major benefit to memory based file systems is that they are very fast –  
10s of times faster than modern SSDs. Read and write performance is massively  
increased for all workload types. These types of fast storage areas are  
ideally suited for applications which need repetitively small data areas for  
caching or using as temporary space. As the data is lost when the machine  
reboots the data must not be  precious as even scheduling backups cannot  
guarantee that all the data will be replicated in the even of a system crash.  
tmpfs vs. ramfs  
  
The two main RAM based file system types in Linux are tmpfs and ramfs. ramfs  
is the older file system type and is largely replaced in most scenarios by  
tmpfs.  
ramfs  
  
ramfs creates an in memory file system which uses the same mechanism and  
storage space as Linux file system cache. Running the command free in Linux  
will show you the amount of RAM you have on your system, including the amount  
of file system cache in use. The below is an example of a 31GB of ram in a  
production server.  
  
free -g  
total used free shared buffers cached  
Mem:   31    29   2    0      0       8  
-/+ buffers/cache: 20 11  
Swap:  13    6    7  
  
Currently 8GB of file system cache is in use on the system. This memory  
is generally used by Linux to cache recently accessed files so that the  
next time they are requested then can be fetched from RAM very quickly.  
ramfs uses this same memory and exactly the same mechanism which causes  
Linux to cache files with the exception that it is not removed when the  
memory used exceeds threshold set by the system.  
  
ramfs file systems cannot be limited in size like a disk base file  
system which is limited by it’s capacity. ramfs will continue using  
memory storage until the system runs out of RAM and likely crashes or  
becomes unresponsive. This is a problem if the application writing to  
the file system cannot be limited in total size. Another issue is you  
cannot see the size of the file system in df and it can only be  
estimated by looking at the cached entry in free.  
tmpfs  
  
tmpfs is a more recent RAM file system which overcomes many of the  
drawbacks with ramfs. You can specify a size limit in tmpfs which will  
give a ‘disk full’ error when the limit is reached. This behaviour is  
exactly the same as a partition of a physical disk.  
  
The size and used amount of space on  a tmpfs partition is also  
displayed in df. The below example shows an empty 512MB RAM disk.  
  
df -h /mnt/ramdisk  
Filesystem Size Used Avail Use% Mounted on  
tmpfs      512M 0    512M  0%   /mnt/ramdisk  
  
These two differences between ramfs and tmpfs make tmpfs much more  
manageable  however this is one major drawback; tmpfs may use SWAP  
space. If your system runs out of physical RAM, files in your tmpfs  
partitions may be written to disk based SWAP partitions and will have  
to be read from disk when the file is next accessed. In some  
environments this can be seen as a benefit as you are less likely to  
get out of memory exceptions as you could with ramfs because more ‘  
memory’ is available to use.  
  
See my other post for details on how to create a RAM disk in Linux.  
