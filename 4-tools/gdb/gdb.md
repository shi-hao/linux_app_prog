# GDB (GNU Project debugger)    
    
## 基本使用    
(1)生成可使用GDB调试的elf文件    
使用gcc/g++编译elf文件，增加参数-g，可以生成可以使用GDB调试的执行文件。    
gcc -g main.c -o main    
g++ -g main.c -o main    
    
(2)启动调试    
gdb elf文件    
    
(3)查看代码 list    
进入gdb调试界面后，是看不到代码的，可以使用l命令(list)查看代码，也可以使用l+行号的方    
式查看指定行的代码。    
l     
l 0    
l 10    
    
(4)设置断点breakpoint    
使用b+行号(breakpoint)的方式设置断电    
b 40    
b 10    
    
(5)运行代码 run    
使用指令r运行代码    
    
(6)进入函数 step    
使用指令s进入函数内部    
    
(7)单步调试 next    
使用指令n单步调试    
    
## Debugging a program that produces a core dump    
使用gdb打开elf文件，运行代码，查看core dump信息。    
  
  
## CGDB  
可以实时查看代码的GDB调试器，操作和GDB保持一致。  
按esc键，鼠标可以进入到代码阅读窗口。  
按i键，可以返回到GDB命令行窗口。  
