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

reboot  

正常了，无线和有线网卡全部正常。  

3.更换图形管理器  
安装的ubuntu18默认的是gdm3图形管理器，将其更换为lightdm，  
因为lightdm方便查看一些X-windows的错误日志。
apt-get install lightdm  
dpkg-reconfigure lightdm  

4.查看错误lightdm错误日志  
重启后,login loop依旧，alt+ctrl+f1，输入用户名密码进入命令行。  
进入用户主目录。  
cd ~
cd /home/bleach  
查看.xsession-errors文件，查看报错问题，看完后发现，ssh提示openssl库有问题。
重新编译openssh，安装，问题解决。  


## 总结
这次问题主要是胡乱安装openssl造成的，dhclient，apt，ssh都依赖于openssl的libcrypto库。  

