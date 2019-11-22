# Linux查看系统日志
1.系统日志位置
/var/log/

2.常用日志
/var/log/syslog：系统日志
/var/log/auth.log：用户登录和身份验证日志

/var/log/dpkg.log：所有二进制包日志都包括程序包安装和其他信息
/var/log/xorg.0.log：X.org图形界面文件
/var/log/wtmp：登录信息文件

/var/log/messages：常规日志消息
/var/log/boot：系统启动日志
/var/log/debug：调试日志消息
/var/log/dmesg：Linux内核环缓存日志
/var/log/faillog：用户登录日志文件失败
/var/log/kern.log：内核日志文件
/var/log/user.log：所有用户级日志
/var/log/ufw：ufw防火墙日志

3.查看日志工具
文本查看工具：more/less  head/tail  last 
文本编辑工具：vim
关键字检索工具：grep

4.查看log
(1)last指令可以查看最近设备的登录情况，一般而言，此命令读取的是
/var/log/wtmp文件。

(2)查看系统日志
more/less   syslog
vim         syslog

more/less   auth.log
tail -f     syslog    #可以实时查看文件更新

5.dmesg
dmesg命令可以查看系统硬件插拔信息，文件挂载信息等系统信息。






