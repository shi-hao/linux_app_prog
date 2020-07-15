#include<stdio.h>

void test(){
	int c=10;
	c+=2;
	printf("c = %d\n", c);

}

int main(){

	int a=10,b=20;

	a += b;
	test();
	printf("a = %d, b = %d\n", a,b);
}
