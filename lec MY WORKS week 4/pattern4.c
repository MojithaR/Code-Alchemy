//This C programm is for pattern 3
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int i , j ,num;
	
	//getting user inputs
	printf("Enter number of raws you need : ");
	scanf("%d",&num);
	printf("\n");
	
	//starting nesterd for loop
	for(i=1 ; i<=num ; i++)
	{
		for(j=1 ;j<=i;j++)
		{
			printf("%d",j);
		}
		printf("\n");
	}
	return 0;
	//end of main function
	
}
