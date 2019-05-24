#include<stdio.h>
#include<time.h>

void func(){

	for(int cnt=0; cnt<10000000; cnt++);
}

int main(){

	clock_t t;
	double time_taken;
	t = clock();

	func();

	t = clock() - t;
	time_taken = ((double)t)/CLOCKS_PER_SEC;
	printf("func() took %f seconds to execute \n", time_taken);
}
