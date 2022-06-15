# win & ubuntu real time differ 8 hours  
  
win10 & ubuntu双系统时间相差8⼩时  
在使⽤双系统的过程中，博主遇到了遇见了一件令⼈头疼的事：每次打开Windows或者Linux时间都是错误的！  
⽽且细⼼的博主还发现，每次的时间差都是8⼩时，作为⼀个强迫症，博主表⽰不能忍。  
那么，就让我们来解决这个问题吧。  
  
Why?  
经过⼀番⾕歌，我很快找到了原因：  
Windows 与 Mac/Linux 缺省看待系统硬件时间的⽅式是不⼀样的：  
Windows把系统硬件时间当作本地时间(local time),即操作系统中显⽰的时间跟BIOS中显⽰的时间是⼀样的。  
Linux/Unix/Mac把硬件时间当作UTC，操作系统中显⽰的时间是硬件时间经过换算得来的，⽐如说北京时间是  
GMT+8，则系统中显⽰时间是硬件时间+8。  
  
这样，当PC中同时有多系统共存时，就出现了问题。  
假如你的linux设置的时区都为北京时间东⼋区，当前系统时间为9：00AM。则此时硬件中存储的实际  
是UTC时间1:00AM。这时你重启进⼊Windows后，你会发现windows系统中显⽰的时间是1:00AM，  
⽐linux中慢了8个⼩时。同理，你在Windows中更改或⽤⽹络同步了系统时间后，再到linux中去看，  
系统就会快了8⼩时。 在实⾏夏令时的地区，情况可能会更复杂些。  
可以进入BIOS查看系统时间，亲测确实如此。  
  
How to solve it?  
解决⽅案有两种：⼀种是对Windows下⼿，另⼀种则是对Linux下⼿。  

Windows解决⽅案,win+R进⼊命令行,在命令⾏中输⼊下⾯命令并回车:    
Reg add HKLM\SYSTEM\CurrentControlSet\Control\TimeZoneInformation /v RealTimeIsUniversal /t REG_DWORD /d 1  
  
Linux解决⽅案  
打开编辑⽂件/etc/default/rcS,  
	sudo vi /etc/default/rcS  
找到这⼀⾏，UTC=yes，把yes改为no,保存并退出。  
如果说找不到UTC = yes 直接在terminal运⾏(本⼈亲测Ubuntu16.04),  
	sudo timedatectl set-local-rtc 1  
