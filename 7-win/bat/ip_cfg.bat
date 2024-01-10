set /p input= Type cmd 1-dhcp, 2-static

if %input%==1 (
	netsh interface ip set address name="ÒÔÌ«Íø"  source=dhcp
	pause
)
if %input%==2 (
	netsh interface ip set address name="ÒÔÌ«Íø"  static 192.168.1.80 255.255.255.0 192.168.1.1
	pause
)