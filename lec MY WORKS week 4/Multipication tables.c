//this C program for nesterd for loops
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int i, j ;
	
	//starting nestered loop
	for(i=1;i<=10;i++)
	{
		printf("Multipication table of %d ",i);
		printf("\n");
		for(j=1 ; j<=12 ; j++)
		{
			printf("%d * %d =%d\n",i,j, i*j);
		}
		printf("\n");
	}
	
	return 0;
	//end of main function
}
