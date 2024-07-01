//incriment and decriment operators
#include<stdio.h>
//function main begins program execution
int main (void)
{
	//incriment operator -prefix
	int a = 2;
	printf(" %-d\n ", a);
	printf(" %-d\n ",++a );
	printf(" %-d\n\n ", a );
	
	//incriment operator -postfix
	int b = 2;
	printf(" %-d\n ", b );
	printf(" %-d\n",  b++ );
	printf(" %-d\n\n ", b );
	
	//dicriment operator - prefix
	int c= 6;
	printf(" %-d\n ", c );
	printf(" %-d\n ", --c );
	printf(" %-d\n\n ", c );
	
	//dicriment operator - postfix
	int d =7;
	printf(" %-d\n ", d );
	printf(" %-d\n ", d-- );
	printf(" %-d\n ", d );
	
	return 0;
}//end of main function
