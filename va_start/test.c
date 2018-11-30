/*
 *功能： 宏va_arg()用于给函数传递可变长度的参数列表。 
 *首先，必须调用va_start() 传递有效的参数列表va_list和函数强制的第一个参数。第一个参数代表将要传递的参数的个数。 
 *其次，调用va_arg()传递参数列表va_list 和将被返回的参数的类型。va_arg()的返回值是当前的参数。 
 *再次，对所有的参数重复调用va_arg() 
 *最后，调用va_end()传递va_list对完成后的清除是必须的。 
 *
 */

   

   

#if va_arg==stdon
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>

//第一个参数指定了参数的个数
int sum(int number,...)
{
    va_list vaptr;
    int i;
    int sum = 0;

    va_start(vaptr,number);

    for(i=0; i<number;i++)
    {
        sum += va_arg(vaptr,int);
    }

    va_end(vaptr);
    return sum;
}

int main()
{
    printf("%d\n",sum(4,  5,5,5,6));

    return 0;
}

#endif
