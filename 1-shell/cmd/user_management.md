# linux user management     

## group
User groups play an important role on Linux systems. They provide an easy way
for a select groups of users to share files with each other. They also allow
sysadmins to more effectively manage user privileges, since they can assign
privileges to groups rather than individual users.

当创建一个新用户时，会在/etc/passwd和/etc/group文件中，创建用户的用户信息和创
建和用户名同名的组。  

### /etc/passwd

root:x:0:0:root:/root:/bin/bash
1   :2:3:4:  5 :    6:    7
总共分7个部分，每个部分用分号隔开。

1.User Name 
It is used when user logs in. It should be between 1 and 32 characters in
length.

2.Password
An x character indicates that encrypted password is stored in
/etc/shadow file. Please note that you need to use the passwd command to
computes the hash of a password typed at the CLI or to store/update the hash
of the password in /etc/shadow file.

3.User ID (UID)
Each user must be assigned a user ID (UID). UID 0 (zero) is
reserved for root and UIDs 1-99 are reserved for other
predefined accounts. Further UID 100-999 are
reserved by system for administrative and system accounts/groups.

4.Group ID (GID)
The primary group ID (stored in /etc/group file)

5.User ID Info
The comment field. It allow you to add extra information about
the users such as user’s full name, phone number etc. This field use by finger
command.

6.Home directory
The absolute path to the directory the user will be in when
they log in. If this directory does not exists then users directory becomes /

7.Command/shell
The absolute path of a command or shell (/bin/bash).
Typically, this is a shell. Please note that it does not have to be a shell.

### /etc/group

root:x:0:
1   :2:3:4
总共分4部分。

1.Group Name
It is the name of group. If you run ls -l command, you will see
this name printed in the group field.

2.Password
Generally password is not used, hence it is empty/blank. It can
store encrypted password. This is useful to implement privileged groups.

3.Group ID (GID)
Each user must be assigned a group ID. You can see this
number in your /etc/passwd file.

4.Group List
It is a list of user names of users who are members of the
group. The user names, must be separated by commas.

### /etc/shadow
The /etc/shadow file stores actual password in encrypted format (more like the
hash of the password) for user’s account with additional properties
related to user password. Basically, it stores secure user account
information. All fields are separated by a colon (:) symbol. It contains one
entry per line for each user listed in /etc/passwd file. Generally, shadow
file entry looks as follows (click to enlarge image):

<pre>
vivek:$1$jjdjfjdddddddddd:13064:0:99999:7:::
1    :2                  :3    :4:5    :6

Username : It is your login name.
Password : It is your encrypted password. The password should be minimum 8-12
characters long including special characters, digits, lower case alphabetic
and more. Usually password format is set to $id$salt$hashed, The $id is the
algorithm used On GNU/Linux as follows:
    $1$ is MD5
	$2a$ is Blowfish
	$2y$ is Blowfish
	$5$ is SHA-256
	$6$ is SHA-512
Last password change (lastchanged) : Days since Jan 1, 1970 that password was
									 last changed
Minimum : The minimum number of days required between password changes i.e.
the number of days left before the user is allowed to change his/her password

Maximum : The maximum number of days the password is valid (after that user is
		forced to change his/her password)

Warn : The number of days before password is to expire that user is warned
that his/her password must be changed

Inactive : The number of days after password expires that account is disabled

Expire : days since Jan 1, 1970 that account is disabled i.e. an absolute date
specifying when the login may no longer be used.
</pre>

## Permissions
Permissions in Linux can be a bit confusing. For every directory and file,
there are permissions that can be set informing what users can
perform operations on them, as well as what operations those users
can take.
Users can perform read (r), write (w) and execute (x) operations on
files/directories. Here's how the three permission types breaks down when
applied to directories and files:

<pre>
Directories
    read - ability to read contents of a directory
    write - ability to rename or create a new file/directory within a directory (or delete a directory)
    execute - ability to cd into a directory
Files
    read - ability to read a file
    write - ability to edit/write to a file (or delete a file)
    execute - ability to execute a file (such as a bash command)

The other half of this is users and groups. For any file and directory, we can define how users (u), 
groups (g) and others (o) can interact with a directory or file. Here's how that breaks down:

User  - The permission for owners of a file or directory
Group - The permissions for users belonging to a group. A user can be part of one or more groups. 
		Groups permissions are the primary means for how multiple users can read, write or execute the 
		same sets of files
Other - The permissions for users who aren't the user or part of a group assigned to a file or directory
</pre>

<pre>
$ ls -la /var/www
drwxr-xr-x  2 root root 4096 May  3 19:52 .          # Curent Directory
drwxr-xr-x 12 root root 4096 May  3 19:46 ..         # Containing Directory
-rw-r-xr--  1 root root   13 May  3 19:52 index.html # File in this Directory

    drwxr-xr-x - User/Group/Other Permissions. The preceding "d" denotes this as a directory. 
                 Lacking a "d" means it's a file.
    2 - This is the number of "hard links" to the file or directory
    root root - The User and Group assigned to the file or directory
    4096 - The size of the file/directory in bytes
    May 3 19:52 - last modified (or created) data/time
    . - The file name. A period (.) is the current directory. Two periods (..) is the directory
         one level up. Otherwise this will show a file or directory name.
</pre>

## 用户权限，用户组权限如何管理？

    
## add user    
useradd     
如果后面不添加任何参数选项，创建的用户为三无用户，没有home directory，没有密码，没有系统shell。    
    
adduser    
创建用户的过程更像是一种人机对话，系统会提示你输入各种信息，然后会根据这些信息帮你创建新用户。    
    
## del user    
userdel    
    
userdel user    
userdel -r user  #将用户主目录也删除     
    
    
## edit user password    
passwd  user    
