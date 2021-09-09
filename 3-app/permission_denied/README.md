# permission denied  
permission denied是linux常见的使用问题，其原因是权限问题。  
  
(1)初级权限问题  
使用ls -l查看当前文件夹下的文件，可以看到如下类似的信息。  
drwxr-xr-x 3 bleach bleach 4096 9月  11  2019 1-java_study  
drwxr-xr-x 3 bleach bleach 4096 9月  12  2019 2-app  
-rw-r--r-- 1 bleach bleach 1160 9月  24  2019 README.md  
  
三个用户级别，owner，group，others，简单来说就是，文件的创建者拥有者，  
文件的拥有者所在的组，其他所有用户。  
  
当遇到permission denied首先要弄明白一个两个问题，那么问题就解决了一半了，  
首先，确认当前登录的用户是谁？使用whoami指令可以确认。  
然后，要查看一个文件的权限，使用ls -l可以查看。  
最后，根据ls -l的信息判断当前操作是否有问题。  
  
没有赋予读写，执行权限导致permission denied问题是经常发生的。  
  
(2)高级权限问题  
当在一个shell脚本中，或者一个可执行文件中，将脚本和elf文件赋予执行权限，然后执行时，  
也报了permission denied错误，这是为什么呢？  
  
经过查看代码发现，在脚本中对一个系统文件进行了open操作，然后对系统文件执行ls -l发现，  
该文件只有创建者有读写权限，问题找到了，原来还是权限不匹配。  
  
解决这个问题的办法是可以修改文件的权限，根据当前用户所处的组，修改系统的文件的权限。  
或者将当前用户加入到系统文件创建者的组内(这个方法有一定风险)。  
