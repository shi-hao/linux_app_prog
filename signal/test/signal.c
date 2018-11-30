#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdlib.h>


#define  signal_waiting    SIGRTMAX

void sig_handler(int signo);

int sample1(){
	printf("i am sample1\n");
}

int sample2(){
	printf("i am sample2\n");
}

int sample3(){
	printf("i am sample3\n");
}

unsigned char* signal_list[63] = {
	" SIGHUP	 ",  "  SIGINT	    ",  " SIGQUIT 	 ","    SIGILL	   ","   SIGTRAP",   
	" SIGABRT	 ",  "  SIGBUS	    ",  " SIGFPE     ","    SIGKILL	   ","   SIGUSR1",
	" SIGSEGV	 ",  "  SIGUSR2	    ",  " SIGPIPE    ","    SIGALRM	   ","   SIGTERM",
	" SIGSTKFLT	 ",  "  SIGCHLD	    ",  " SIGCONT 	 ","    SIGSTOP	   ","   SIGTSTP",
	" SIGTTIN	 ",  "  SIGTTOU	    ",  " SIGURG     ","    SIGXCPU	   ","   SIGXFSZ",
	" SIGVTALRM	 ",  "  SIGPROF	    ",  " SIGWINCH	 ","    SIGIO	   ","   SIGPWR",
	" SIGSYS	 ",  "  SIGRTMIN	",  " SIGRTMIN+1 ","    SIGRTMIN+2 ","   SIGRTMIN+3",
	" SIGRTMIN+4 ",  "  SIGRTMIN+5  ",  " SIGRTMIN+6 ","    SIGRTMIN+7 ","   SIGRTMIN+8",
	" SIGRTMIN+9 ",  "  SIGRTMIN+10 ",  " SIGRTMIN+11","	SIGRTMIN+12","   SIGRTMIN+13",
	" SIGRTMIN+14",  "  SIGRTMIN+15 ",  " SIGRTMAX-14","	SIGRTMAX-13","   SIGRTMAX-12",
	" SIGRTMAX-11",  "  SIGRTMAX-10 ",  " SIGRTMAX-9 ","    SIGRTMAX-8 ","   SIGRTMAX-7",
	" SIGRTMAX-6 ",  "  SIGRTMAX-5	",  " SIGRTMAX-4 ","    SIGRTMAX-3 ","   SIGRTMAX-2",
	" SIGRTMAX-1 ",  "  SIGRTMAX	",
};

int main(int argc, char* argv[])
{
	int signal_num=0;
	if(argc < 2){
		printf("\nplease input the signal number:kill -l \n ");
		//system(" kill -l ");
		//system(" ps ");
		return -1;
	}
	signal_num = atoi(argv[1]);
	if(signal_num >=1 && signal_num <= 64)
		printf("main is waiting for a signal %d:%s\n", signal_num, signal_list[signal_num - 1]);
	else 
	{
		printf("\n signal num is %d, out of signal num range\n", signal_num);
		return -1;
	}

	//定义信号处理函数
	if(signal(signal_num, sig_handler) == SIG_ERR){
		perror("signal errror");
		exit(EXIT_FAILURE);
	}

	//屏蔽信号
	signal(SIGCHLD,SIG_IGN);

	for(; ;);//有时间让我们发送信号

	return 0;
}

void sig_handler(int signo)
{
	printf("catch the signal %d\n:%s",signo, signal_list[signo - 1]);
	for(;;);
}
