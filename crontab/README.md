# crontab ubuntu16
crontab用于向系统增加周期任务 

crontab -e   
打开文件  

任务增加格式如下：  
<pre>
m     h     dom   mon   dow   command
0-59  0-23  1-31  1-12  0-7   command

m: 表示分钟
h: 表示小时
dom: 表示日期
mon: 表示月份
dow: 表示星期
command: 预执行的命令

通配符
* 代表所有值
/ 代表“每”
- 代表范围
, 分割数字

</pre>
* * * * *  echo "i am you"  >> /home/test.txt  
表示每天的每分钟执行一次指令echo  


30  9,13 * * * echo "i am you"  >> /home/test.txt    
表示每天的9点30分，和13点30分，执行一次指令echo    
