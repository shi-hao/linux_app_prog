@echo off
echo Type 1-DHCP, 2-Static
set /p input=  

if %input%==1 (
	echo  DHCP Mode
	netsh interface ip set address name="ÒÔÌ«Íø"  source=dhcp
	pause
) else if %input%==2 (
	echo  Static Mode
	netsh interface ip set address name="ÒÔÌ«Íø"  static 192.168.1.100 255.255.255.0 192.168.1.1
	pause
) else (
	echo input wrong index
	pause
)