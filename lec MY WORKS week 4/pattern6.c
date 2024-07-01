//This C program is for pattern 6
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring varaibals
	int i , j , number=1 ;
	
	
	//starting nesterd for loop
	for(i=1 ; i<=5 ; i++)
	{
		for(j=1; j<=i ;j++)
		{
			printf("%d\t",number);
			number++;
		}
		printf("\n");
	}
	return 0;
	//end of main function
}
