# ubuntu18.04使用中文输入法  
ubuntu18安装中文输入法很简单，步骤如下：    
  
settting --> region&language --> manage installed languages --> install/remove languages     
  
然后找到chinese simlified，apply即可。    
  
keyboard input method system选择ibus。    
  
## bugs  
1. 中文输入候选词无法使用数字键选择，使用数字键选择词语后，输入崩溃。    
进入ibus的github官网，查看issuse，发现有人已经提出此问题。    
  
解决方法：    
(1)升级输入法的版本，步骤如下：    
增加ppa，然后更新源，升级。    
sudo add-apt-repository ppa:gunnarhj/ibus-libpinyin    
sudo apt-get update    
sudo apt-get upgrade    
虽然升级了输入法的版本，但是并没有解决问题，问题依旧。    
  
  
(2)删除配置文件    
删除 ~/.cache/ibus/libpinyin/user.conf 文件，问题解决。    
