# fcitx    
  
## sogouPY  
搜狗拼音已经支持ubuntu，所以可以考虑使用搜狗拼音，搜狗拼音使用    
fcitx架构。    
    
(1)下载搜狗deb安装包    
从搜狗官网下载deb安装包    
    
(2)安装deb    
使用dpkg工具安装deb包，不建议直接点击安装，因为看不到安装失败相关    
的信息，根据打印的安装信息依次解决错误直至安装成功。    
    
(3)配置language support支持    
点击system setting -> language support -> install chinese -> keyboard     
input system 选择fcitx    
    
(4)重启    
重启后查看系统顶部右侧是否正常显示了输入法。    
  
## TroubleShooting  
在ubuntu16上安装搜狗拼音输入法时，一直失败，具体现象为：  
(1)dpkg安装报错  
install will break fcitx-qimpanel...  
根据报错信息，可以解决问题。  
  
(2)安装好后，fcitx不显示sogou拼音，无法添加  
通过删除sogou拼音配置文件和fcitx配置文件，然后重新安装sogou拼音解决问题。  
fcitx和sogou配置文件在~/.config目录下，  
sogou配置文件以sougou开头的几个文件。  
fcitx是fcitx配置文件夹。  
  
(3)配置好切换键  
一定配置好输入法切换快捷键  
配置好fcitx切换快捷键  
配置好Ubuntu系统的text entry setting快捷键  
配置好sogou输入法的快捷键  
一定防止三个快捷键配置冲突  
