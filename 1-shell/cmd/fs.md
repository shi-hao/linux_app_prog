# file system      
    
## 查看当前文件系统目录文件，ls-list      
ls -l     
<pre>    
total 12    
drwxrwxr-x 3 bleach bleach 4096 Jul 14 14:43 cmd    
drwxrwxr-x 2 bleach bleach 4096 May 22 17:47 script    
drwxrwxr-x 2 bleach bleach 4096 Jun 28  2019 sed    
</pre>    
    
ls -lh    
<pre>    
total 12K    
drwxrwxr-x 3 bleach bleach 4.0K Jul 14 14:44 cmd    
drwxrwxr-x 2 bleach bleach 4.0K May 22 17:47 script    
drwxrwxr-x 2 bleach bleach 4.0K Jun 28  2019 sed    
</pre>    
-h, --human-readable print sizes in human readable format (e.g., 1K 234M 2G)    
    
## 查看文件占用大小，du-disk usage      
du dir      
<pre>    
du  cmd
16	cmd/ramDisk    
60	cmd    
</pre>    
    
du -h dir      
<pre>    
du  -h cmd
16K	cmd/ramDisk    
60K	cmd    
</pre>    
-h, --human-readable print sizes in human readable format (e.g., 1K 234M 2G)    
  
du -ch dir  
<pre>    
du  -ch cmd
16K	cmd/ramDisk  
60K	cmd/  
60K	total  
</pre>    
-c, --total produce a grand total  
