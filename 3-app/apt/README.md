# APT    
Advanced Package Tool, or APT, is a free-software user interface that works    
with core libraries to handle the installation and removal of software on    
Debian, Ubuntu, and related Linux distributions.[4] APT simplifies the process    
of managing software on Unix-like computer systems by automating the    
retrieval, configuration and installation of software packages, either from    
precompiled files or by compiling source code.    
    
    
## update    
apt-get update    
  
### what does sudo apt-get update command does?  
update is used to resynchronize the package index files from their sources.   
The indexes of available packages are fetched from the location(s) specified  
in /etc/apt/sources.list. For example, when using a Debian archive, this   
command retrieves and scans the Packages.gz files, so that information   
about new and updated packages is available. An update should always be   
performed before an upgrade or dist-upgrade. Please be aware that the   
overall progress meter will be incorrect as the size of the package files  
cannot be known in advance.  
  
## what does sudo apt-get upgrade command does?  
upgrade is used to install the newest versions of all packages currently   
installed on the system from the sources enumerated in /etc/apt/sources.list.   
Packages currently installed with new versions available are retrieved and upgraded;   
under no circumstances are currently installed packages removed, or packages   
not already installed retrieved and installed. New versions of currently installed   
packages that cannot be upgraded without changing the install status of another   
package will be left at their current version. An update must be performed   
first so that apt-get knows that new versions of packages are available.  
  
## install    
apt-get install [package_name]    
安装软件    
    
## remove    
apt-get remove [package_name]    
卸载软件    
    
## edit-sources    
更改软件源    
