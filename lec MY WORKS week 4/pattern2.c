//this C programm is for pattern 2
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int i, j,number;
	
	//getting user inputs
	printf("Enter Raws : ");
	scanf("%d",&number);
	
	//starting nesterd for loop
	for(i=1 ; i<=number ; i++)
	{
		for(j=1 ;j<=number ; j++)
		{
			printf("*");
		}
		printf("\n");
	}
	return 0;
	//end of main function
}
