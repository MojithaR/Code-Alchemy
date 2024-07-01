//This is for pattern 5 in C 
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int i , j ;
	
	//starting nesterd for loop
	for(i=1 ; i<=5 ; i++)
	{
		for(j=1 ; j<=i ;j++)
		{
			printf("%d",i);
		}
		printf("\n");
	}
	return 0;
	//end of main function
}
