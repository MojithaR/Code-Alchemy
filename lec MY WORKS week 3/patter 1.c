//Pattern one program
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int i , j , raw ;

	
	//getting user inputs
	printf("Enter Number of raws you need : ");
	scanf("%d", &raw);
	printf("\n");
	

	//starting for outer loop
	for(i=1 ; i<=raw ; i++)
	{
		//starting inner for loop
		for(j=1 ; j<= i ; j++)
		{
			printf("*");
			
		}//end of inner for loop
		printf("\n");
	}
	//end of outter for loop
	

	printf("\n second pattern \n");
	
	printf("Enter Number of raws you need  : ");
	scanf("%d", &raw);
	printf("\n");
	
	//starting outter for loop
	for(i=1 ;  i<=raw ; i++ )
	{
		//starting inner for loop
		for(j=1 ; j<=raw ; j++)
		{
			printf("*");
		}
		//end of inner for loop
		printf("\n");
	}
	//end of outter for loop
	
	return 0;
	//end of main function
}
