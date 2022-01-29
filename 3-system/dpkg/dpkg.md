# DPKG(package manager for Debian)
是 Debian 和基于 Debian 的系统中一个主要的包管理工具，可以用来安装、构建、
卸载、管理 deb 格式的软件包。

dpkg -i dir+deb_package_name

dpkg与apt区别
dpkg一般是用来安装已经下载好的deb安装包，而apt是从/etc/apt/sources.list 配
置文件中定义的软件镜像源里下载软件包并安装，使用时也只需指定软件的名称（或者
也可以附加上版本号）。
