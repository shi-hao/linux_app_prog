# 查看linux硬件信息，可能需要root权限    
lshw    
sudo lshw    
sudo lshw -short  
   
<pre>  
H/W path        Device      Class          Description  
======================================================  
                            system         10G4CTO1WW (LENOVO_MT_10G4_BU_LENOVO_FM_ThinkCentre M8600t-N000)  
/0                          bus            SKYBAY  
/0/0                        memory         64KiB BIOS  
/0/47                       memory         128KiB L1 cache  
/0/48                       memory         128KiB L1 cache  
/0/49                       memory         1MiB L2 cache  
/0/4a                       memory         8MiB L3 cache  
/0/4b                       processor      Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz  
/0/4c                       memory         16GiB System Memory  
/0/4c/0                     memory         [empty]  
/0/4c/1                     memory         8GiB DIMM Synchronous 2133 MHz (0.5 ns)  
</pre>  
    
# 查看cpu详细信息    
lscpu    
    
<pre>   
Architecture:        x86_64    
CPU op-mode(s):      32-bit, 64-bit    
Byte Order:          Little Endian    
CPU(s):              4    
On-line CPU(s) list: 0-3    
Thread(s) per core:  2    
Core(s) per socket:  2    
Socket(s):           1    
NUMA node(s):        1    
Vendor ID:           GenuineIntel    
CPU family:          6    
Model:               142    
Model name:          Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz    
Stepping:            9    
CPU MHz:             1223.881    
CPU max MHz:         3100.0000    
CPU min MHz:         400.0000    
BogoMIPS:            5424.00    
Virtualization:      VT-x    
L1d cache:           32K    
L1i cache:           32K    
L2 cache:            256K    
L3 cache:            3072K    
</pre>   
    
    
# 查看cpu，内存使用率    
top     
    
<pre>   
top - 14:13:19 up 21 min,  1 user,  load average: 0.28, 0.35, 0.52    
Threads: 687 total,   1 running, 686 sleeping,   0 stopped,   0 zombie    
%Cpu0  :  2.0 us,  1.0 sy,  0.0 ni, 97.1 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st    
%Cpu1  :  1.9 us,  1.9 sy,  0.0 ni, 96.1 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st    
%Cpu2  :  7.9 us,  2.0 sy,  0.0 ni, 90.1 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st    
%Cpu3  :  4.9 us,  2.9 sy,  0.0 ni, 92.2 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st    
%Cpu4  :  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st    
%Cpu5  :  2.0 us,  1.0 sy,  0.0 ni, 97.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st    
%Cpu6  :  1.0 us,  0.0 sy,  0.0 ni, 99.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st    
%Cpu7  :  1.0 us,  0.0 sy,  0.0 ni, 99.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st    
KiB Mem : 16360612 total, 11989828 free,  1509464 used,  2861320 buff/cache    
KiB Swap: 15624188 total, 15624188 free,        0 used. 14320080 avail Mem    
    
 PID USER      PR  NI    VIRT    RES    SHR S %CPU %MEM     TIME+ COMMAND                
4094 bleach    20   0 3395304 655484 315820 S 12.5  4.0   2:17.14 Web Content            
 961 root      20   0  624552 167768  61224 S  6.7  1.0   1:15.59 Xorg                   
2874 bleach    20   0  618116  48584  35316 S  3.8  0.3   1:26.39 gnome-terminal-        
2030 bleach    20   0 1479276 280872  83124 S  2.9  1.7   2:46.31 compiz                 
4651 bleach    20   0   44092   4160   3016 R  2.9  0.0   0:00.38 top                    
2041 bleach    20   0 1479276 280872  83124 S  1.0  1.7   0:22.52 llvmpipe-0             
2042 bleach    20   0 1479276 280872  83124 S  1.0  1.7   0:22.90 llvmpipe-1             
2043 bleach    20   0 1479276 280872  83124 S  1.0  1.7   0:21.99 llvmpipe-2             
2044 bleach    20   0 1479276 280872  83124 S  1.0  1.7   0:22.43 llvmpipe-3             
2045 bleach    20   0 1479276 280872  83124 S  1.0  1.7   0:22.09 llvmpipe-4             
</pre>  
  
<pre>  
第一行：时间信息等。  
  
第二行：线程运行情况。  
  
第三行：cpu时间占比使用率（百分比）  
  
	us 用户空间占用CPU百分比  
	sy 内核(系统)空间占用CPU百分比  
	ni 户进程空间内改变过优先级的进程占用CPU百分比  
	id 空闲CPU百分比  
	wa 等待输入输出的CPU时间百分比  
	hi 硬件CPU中断占用百分比  
	si 软中断占用百分比  
	st 虚拟机(虚拟化技术)占用百分比  
  
第四行：内存信息系统数据　  
Mem  
	1004768k total：  物理内存总量  
　　463092k used：   使用的物理内存总量  
　　541676k free：     空闲内存总量  
　　64316k buffers：  用作内核缓存的内存量  
Swap  
　　694268k total：　 交换区总量  
　　0 k used：　　　  使用的交换区总量  
　　694268k free：　  空闲交换区总量  
　　224884k cached：缓冲的交换区总量  
</pre>  
