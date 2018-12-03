#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>

/*
 * 僵尸进程和孤儿进程，很好理解，父进程先于子进程先执行完毕了，子进程就是孤儿进程，父亲没了，那就是孤儿，
 * 子进程先于父进程结束，但是父进程没有去wait子进程，而且父进程还活着，子进程就是僵尸进程，如果父进程随后
 * 也执行完毕了，那么僵尸进程又成为孤儿进程了。
 * 孤儿进程最终都会由linux的init进程接管，最后系统资源都会被释放。但是僵尸进程会有隐患，僵尸进程的进程资源
 * 不会释放，会导致系统出问题，主要是进程号是有限的，僵尸进程的进程号无法被回收。
 * pid_t wait(int *status);
 * pid_t waitpid(pid_t pid, int *status, int options);
 *
 * waitpid(-1, &status, WNOHANG);
 * 等待所有子进程，父进程不阻塞。
 *
 */


int main(){

	int i = 0;
	int root = 1;
	int tmp;
	tmp = fork();
	if(tmp < 0)
		printf("\n fork error \n");

	if( tmp > 0 )
	{
		printf("\n parent process id is %d\n", 
				 getpid());
		sleep(60);
	}else{
		printf("\n children process id is %d, i will be a zombie\n", 
				 getpid());
		sleep(1);
		exit(0);
	}
}
