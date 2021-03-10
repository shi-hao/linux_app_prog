# file system      
    
## 1.查看当前文件系统目录文件，ls-list      
ls -l     
total 12    
drwxrwxr-x 3 bleach bleach 4096 Jul 14 14:43 cmd    
drwxrwxr-x 2 bleach bleach 4096 May 22 17:47 script    
drwxrwxr-x 2 bleach bleach 4096 Jun 28  2019 sed    
    
ls -lh    
total 12K    
drwxrwxr-x 3 bleach bleach 4.0K Jul 14 14:44 cmd    
drwxrwxr-x 2 bleach bleach 4.0K May 22 17:47 script    
drwxrwxr-x 2 bleach bleach 4.0K Jun 28  2019 sed    

-h, --human-readable print sizes in human readable format (e.g., 1K 234M 2G)    
    
## 2.查看文件占用大小，du-disk usage      
du dir      
du -h dir      

du -h cmd
16K	cmd/ramDisk    
60K	cmd    

-h, --human-readable print sizes in human readable format (e.g., 1K 234M 2G)    
  
du -ch dir  

du  -ch cmd
16K	cmd/ramDisk  
60K	cmd/  
60K	total  

-c, --total produce a grand total  
