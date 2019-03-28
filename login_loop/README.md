# ubuntu18.04 login loop
问题：  
>ubuntu18.04一直登陆循环，无法进入界面。  
>wifi无法连接网络。  
>有线网络不能用了。  

1.查看系统日志  
/var/log目录下查看日志。  
auth.log  
syslog  
并没有查看到有用信息。

2.查看网卡  
ifconfig查看网卡，有线网卡网线正常连接，网卡却获取不到ip地址。  
使用命令手动获取。  

dhclient enx000ec6be0723  

提示openssl libcrypto.so.1.1找不到。  
卸载，删除以前所有的openssl库文件，重新编译并安装openssl1.1.0版本。  


2.更换图形管理器  
安装的ubuntu18默认的是gdm3图形管理器，将其更换为lightdm，  
因为lightdm方便查看一些X-windows的错误日志。
apt-get install

