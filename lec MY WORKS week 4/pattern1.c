/*THis is pattern 1*/
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables'
	int i , j ,num;
	
	//getting user inputs
	printf("Enter number of Raws : ");
	scanf("%d",&num);
	
	//starting nesterd loops
	for(i=1;i<=num;i++)
	{
		for(j=1;j<=i;j++)
		{
			printf("*");
			
		}
		printf("\n");
	}
	return 0;
	//end of main function
}
