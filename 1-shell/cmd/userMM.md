# linux user management     
    
## 1.add user    
useradd     
如果后面不添加任何参数选项，创建的用户为三无用户，没有home directory，没有密码，没有系统shell。    
    
adduser    
创建用户的过程更像是一种人机对话，系统会提示你输入各种信息，然后会根据这些信息帮你创建新用户。    
    
## 2.del user    
userdel    
    
userdel user    
userdel -r user  #将用户主目录也删除     
    
    
## 3.edit user password    
passwd  user    
