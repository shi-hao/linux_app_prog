# launch a program on specific cpu core      
      
## check the cpu cores      
using the lscpu command check the system cpu core id.      
<pre>      
Architecture:          x86_64      
CPU op-mode(s):        32-bit, 64-bit      
Byte Order:            Little Endian      
CPU(s):                8      
n-line CPU(s) list:    0-7      
Thread(s) per core:    2      
Core(s) per socket:    4      
Socket(s):             1      
NUMA node(s):          1      
Vendor ID:             GenuineIntel      
CPU family:            6      
Model:                 94      
Model name:            Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz      
Stepping:              3      
CPU MHz:               808.031      
CPU max MHz:           4000.0000      
CPU min MHz:           800.0000      
BogoMIPS:              6816.61      
Virtualization:        VT-x      
L1d cache:             32K      
L1i cache:             32K      
L2 cache:              256K      
L3 cache:              8192K      
NUMA node0 CPU(s):     0-7      
</pre>      
      
## using taskset command launch a program      
taskset <core mask>  <program>      
      
core 0    0x1  
core 0-7  0xff      
core 0-1  0x3      
  
taskset  0x1  /home/main      
  
assigning a cpu core to an exsiting program  
taskset -p <core mask>  <program pid>  

taskset -p 0x3 1150
      
## using top command to look up the core usage      
top -H then press 1      
    
## test    
./main.elf    
taskset 0x1 ./main.elf    
taskset 0x3 ./main.elf    
taskset 0x7 ./main.elf    
