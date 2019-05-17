#include<stdio.h>
#include<stdlib.h>
#include<time.h>

/*
 *
 * 获取当前系统时间
 *
 */

int main(){
	time_t rawTime;
	struct tm* timeinfo;
	char strTime[50]={0};

	time(&rawTime);
	timeinfo = localtime(&rawTime);

	sprintf(strTime, " %4d-%02d-%02d %02d:%02d:%02d ",
			1900+timeinfo->tm_year,
			1+timeinfo->tm_mon,
			timeinfo->tm_mday,
			timeinfo->tm_hour,
			timeinfo->tm_min,
			timeinfo->tm_sec);

	printf("\n strtime is %s \n",strTime);
	printf("\n time is %s\n", ctime(&rawTime));
}
