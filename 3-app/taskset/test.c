#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void *print_message_function( void *ptr )
{
	long i=0, j=0, sum=0;
	while(1){
		i++;
		j++;
		sum = i + j;
	}
}

void main(){
	pthread_t thread1;
	const char *message1 = "Thread 1";
	int  iret1;

	/* Create independent threads each of which will execute function */
	iret1 = pthread_create( &thread1, NULL, print_message_function,(void*) message1);
	if(iret1)
	{
		fprintf(stderr,"Error - pthread_create() return code: %d\n",iret1);
		exit(EXIT_FAILURE);
	}

	/* main loop */
	long i=0, j=0, sum=0;
	while(1){
		i++;
		j++;
		sum = i + j;
	}
}
