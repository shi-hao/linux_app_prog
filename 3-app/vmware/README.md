# vmware     
  
## basic usage  
install ubuntu on virtual machine created by vmware software.      
    
(1)vmware    
安装vmware，并创建vmware虚拟机。      
    
(2)ubuntu    
下载ubuntu系统镜像，并安装ubuntu系统。      
    
(3)更新系统      
使用apt-get update更新系统软件源。      
    
(4)安装vmware-tools      
之前vmware-tools需要使用vmware附带的tool工具安装到系统上，目前ubuntu可以    
使用apt-get intall来安装vmware-tools。     
    
  
## shit troubles  
因为开发机在内网，需要安装vmware workstation软件，并创建ubuntu虚拟机，但是虚拟  
机需要更新系统软件，所以想在外网机上创建好虚拟机，更新完毕后，再将虚拟机复制到  
内网机上使用，然后问题开始了。  
内网机：win7  32位系统  
外网机：win10 64位系统  
(1)vmware workstation和vmware player不兼容  
外网机使用vmware player创建ubuntu软件，更新完毕后，复制到内网机上，vmware  
workstation提示创建的ubuntu虚拟机是不同版本vmware产品创建的，无法打开虚拟机。  
  
(2)vmware workstation不同版本之间也不兼容  
外网机安装最新版本的vmware workstation 15，然后创建ubuntu虚拟机，然后复制到内  
网机，vmware workstation依然提示版本不兼容，无法打开虚拟机。  
  
(3)内网机器无法安装高版本vmware workstation  
内网机使用的是vmware workstation 10，版本较老，考虑安装15版本，安装时，提示此  
处理器类型不支持安装程序包，又尝试了12版本，依然不行。  
  
(4)外网机低版本vmware workstation无法创建ubuntu16虚拟机  
外网机使用的是vmware workstation 15，考虑使用vmware workstation 10，安装好后，  
创建虚拟机时，结果报错，无法正常创建虚拟机。  
  
(5)安装双系统  
将内网机安装为双系统，需要将内网机联网更新系统软件，需要将内网机硬盘整理出足够  
空间安装双系统，以后升级软件的话，可能经常需要连接互联网，内网机连接互联网，还  
是经常连接，有点过份了。  
  
(6)升级内网机系统  
将内网机系统升级为64位系统，需要整理内网机硬盘，同时之前系统安装的软件有些可能  
都无法使用了，需要重装。  
