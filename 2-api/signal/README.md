# linux signal  
linu信号（signal）的作用原理类似于中断，所以信号也被称为软中断。  
  
通知进程异步事件。  
  
一般来说，进程可以注册一个信号处理函数，进程收到信号后，进入处理函数执行相应操作。  
  
查看所有信号  
kill -l  
  
1) SIGHUP	     2) SIGINT	     3) SIGQUIT	     4) SIGILL	     5) SIGTRAP  
6) SIGABRT	     7) SIGBUS	     8) SIGFPE	     9) SIGKILL     10) SIGUSR1  
11) SIGSEGV	    12) SIGUSR2     13) SIGPIPE	    14) SIGALRM	    15) SIGTERM  
16) SIGSTKFLT	17) SIGCHLD	    18) SIGCONT	    19) SIGSTOP	    20) SIGTSTP  
21) SIGTTIN	    22) SIGTTOU	    23) SIGURG	    24) SIGXCPU	    25) SIGXFSZ  
26) SIGVTALRM	27) SIGPROF	    28) SIGWINCH	29) SIGIO	    30) SIGPWR  
31) SIGSYS	    34) SIGRTMIN	35) SIGRTMIN+1	36) SIGRTMIN+2	37) SIGRTMIN+3  
38) SIGRTMIN+4	39) SIGRTMIN+5	40) SIGRTMIN+6	41) SIGRTMIN+7	42) SIGRTMIN+8  
43) SIGRTMIN+9	44) SIGRTMIN+10	45) SIGRTMIN+11	46) SIGRTMIN+12	47) SIGRTMIN+13  
48) SIGRTMIN+14	49) SIGRTMIN+15	50) SIGRTMAX-14	51) SIGRTMAX-13	52) SIGRTMAX-12  
53) SIGRTMAX-11	54) SIGRTMAX-10	55) SIGRTMAX-9	56) SIGRTMAX-8	57) SIGRTMAX-7  
58) SIGRTMAX-6	59) SIGRTMAX-5	60) SIGRTMAX-4	61) SIGRTMAX-3	62) SIGRTMAX-2  
63) SIGRTMAX-1	64) SIGRTMAX	  
  
  
1-31  不可靠信号，也称为非实时信号，信号不支持排队，信号可能丢失，比如连续快速发送多次信号，  
进程可能只收到一次。  
  
32-64 可靠信号，也称为非实时信号，支持排队，发多少次信号，进程就可以收到多少次，可靠不丢失。  
  
大部分信号的默认处理方法都是终止或者中断进程。  
  
  
()信号产生  
硬件类或者软件类  
  
（1）硬件类  
用户输入：比如终端上按下组合键盘，ctrl+C，产生sigint信号。  
硬件异常：比如cpu检测到内存访问异常，通知内核产生相应信号，并发送给产生异常的进程。  
  
（2）软件方式  
通过系统调用产生对应的信号。  
  
  
()signal()函数用法  
    signal(signal_id, signal_handler)  
	signal_id : 信号的id，可以使用kill -l查看  
	signal_handler : 信号处理函数  
  
注意：在使用signal注册信号处理函数时，当进入设置的处理函数执行时，如果再次发生此信号，  
      会进入默认的处理函数（ubuntu16验证了一下，这个说法不对呀）  
  
#include <stdio.h>  
#include <unistd.h>  
#include <signal.h>  
#include <stdlib.h>  
  
	void sig_handler(int signo);  
int main(void)  
{  
	printf("mian is waiting for a signal\n");  
	if(signal(SIGINT,sig_handler) == SIG_ERR){  
		perror("signal errror");  
		exit(EXIT_FAILURE);  
	}  
	for(; ;);//有时间让我们发送信号  
  
  
	return 0;  
}  
  
void sig_handler(int signo)  
{  
	printf("catch the signal SIGINT %d\n",signo);  
}  
