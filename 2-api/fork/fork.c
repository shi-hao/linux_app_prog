/* fork基本用法 */
#include<stdio.h>
#include<unistd.h>


/*
 *     fork 字面意思分叉，实际效果也是如此
 *     parent process 1 ----> parent process 1
 *                      ----> child  process 2
 */

int main(){

	pid_t pid;
	int var = 0;


	printf("\nparent process id is %d,the current process id is %d\n", getppid(), getpid());
	pid = fork();
	if(pid < 0)
		printf("error in fork!");
	else if(pid == 0){
		printf("This is child process, pid is %d, parent is %d\n", getpid(), getppid());
		var = 100;
	}else {
		printf("This is parent process, pid is %d, parent is %d\n", getpid(), getppid());
		var = 50;
	}

	printf("var is %d\n", var);
	return 0;
}
