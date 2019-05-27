#include <stdio.h>
#include <sys/time.h>

int main (int argc, char** argv) {
	struct timeval tvalBefore, tvalAfter;  // removed comma

	gettimeofday (&tvalBefore, NULL);
	int i =0;
	while ( i < 10000) {
		i ++;
	}

	gettimeofday (&tvalAfter, NULL);

	// Changed format to long int (%ld), changed time calculation

	printf("Time in microseconds: %ld microseconds\n",
			((tvalAfter.tv_sec - tvalBefore.tv_sec)*1000000L
			 +tvalAfter.tv_usec) - tvalBefore.tv_usec
		  ); // Added semicolon
	return 0;
}
