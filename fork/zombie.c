#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>

/*
 * 
 * 僵尸进程和孤儿进程
 * 首先，进程是有从属关系的，即父子进程关系。
 * 当一个进程的父进程结束了(死掉)，但是子进程依然还在运行(存活)，那么这个进程即使孤儿进程。
 *
 * 僵尸进程正好相反，故名思议，僵尸意为着一个进程死掉了，但是没死透，为啥呢，因为父进程没有去
 * wait该进程，导致子进程没有释放调进程号，被系统挂起了。简单说就是，子进程结束了，父进程依然存活
 * 但是，父进程没有wait子进程，导致被系统挂起，成为僵尸。
 *
 * 当一个进程成为孤儿进程后，系统会将该进程过继给其父进程的父进程，而僵尸进程会被系统挂起。当僵尸
 * 进程的父进程结束后，僵尸进程也会被过继，进程号会被回收。
 * 
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
