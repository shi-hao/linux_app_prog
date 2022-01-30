# top
查看系统运行信息，主要包括cpu、memory等。

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
	ni 用户进程空间内改变过优先级的进程占用CPU百分比
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
