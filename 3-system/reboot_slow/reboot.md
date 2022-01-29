# 1.reboot and poweroff very slowly  
Ubuntu reboot and poweroff is very slow, and do not know what it is doing?    
  
press F11 can print the reboot and poweroff log!    
  
# why slow?  
the ubuntu is printing "a stop job is running for session 2 of user"  
every reboot ubuntu will count 90 seconds?  
  
1)open file vim /etc/systemd/system.conf  
2)delete the front #, and edit the time from 90s to 10s       
	DefaultTimeoutStartSec=10s  
	DefaultTimeoutStopSec=10s  
3)reboot  
