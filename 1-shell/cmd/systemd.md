# systemd 

systemd = system daemon 系统守护进程  
systemd为系统的启动和管理提供一套完整的解决方案。
根据Linux惯例，字母d是守护进程（daemon）的缩写。 Systemd这个名字的含义，就是它要守护整个系统。
使用了systemd，就不需要再用init了。Systemd 取代了initd，成为系统的第一个进程（PID 等于 1），
其他进程都是它的子进程。

pstree查看进程树，可以看到systemd是的一个系统进程。  


systemd并不是一个命令，而是一组命令，涉及到系统管理的方方面面。  
systemctl是Systemd的主命令，用于管理系统。  
