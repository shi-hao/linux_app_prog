/*
 *以前我们在看《unix环境高级编程》的时候，有专门的整章详细介绍如何编写一个后台daemon程序（精灵程序），
 *主要涉及到创建会话组，切换工作目录，设置文件屏蔽字，关闭不必要的描述符等多个操作。这些操作对于每一个
 *后台程序来说都是类似的。
 *在Linux中专门提供了一个函数来完成这个daemon化的过程，这个函数的原型如下
 *
 *int daemon (int __nochdir, int __noclose);
 *
 *如果__nochdir的值为0，则将切换工作目录为根目录；如果__noclose为0，则将标准输入，输出和标准错误都重定向
 *到/dev /null。
 *经过这个函数调用后的程序将运行在后台，成为一个daemon程序，而linux下大多的服务都是以此方式运行的。
 *我们来看一个简单的例子。例如编写例子程序test.c
 *程序进入了后台，通过pstree查看系统进程树。
 *用lsof -p [pid]查看test进程所打开的文件，可以看到文件描述符0,1,2都被重定向到/dev/null
 *并且能够看到，进程的当前工作目录(pwd)为根目录/，daemon函数已经帮我们完成了daemon化的过程，接下来我们只需要
 *关注于程序功能的实现了。
 */


#include <unistd.h>
#include <stdio.h>

int do_sth()
{
	//Add what u want
	return 0;
}
int main()
{
    daemon(0,0);
	while ( 1 )
	{
		do_sth();
		sleep(1);
	}
}
