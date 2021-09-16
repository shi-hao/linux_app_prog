# get and set system time

## date
1. show current time

root@OpenWrt:~/vpn# date
Tue May 18 01:46:50 UTC 2021


2. changing time

date +%T -s "10:13:13"

• 10: Hour (hh)
• 13: Minute (mm)
• 13: Second (ss)

3. changing date

date -s "2021-09-16 11:01:00"

