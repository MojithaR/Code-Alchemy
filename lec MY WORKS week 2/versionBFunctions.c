/*version B function */
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables 
	int i , j ;
	
	for(i=1; i<=5 ; i++)
	{
		for(j=1 ;j<=i; j++)
		{
			printf("%c",96+j);
		}
		printf("\n");
	}
	
	return 0;

}
