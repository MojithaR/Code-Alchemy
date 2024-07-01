/*version B function */
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables 
	int i , j , x;
	
	for(x=1 ;x<=2 ; x++)
	{
		for(i=1 ;i<=2 ; i++)
		{
			for(j=1 ;j<=2 ;j++)
			{
				printf("[%d %d %d]\n " , x  ,i , j);
			}
		}
		
	}
	printf("\n\n");
	
	for(x=2 ;x>=1 ; x--)
	{
		for(i=2 ; i>=1 ; i--)
		{
			for(j=2 ;j>=1 ; j--)
			{
				printf("[%d %d %d ]\n", x ,i , j);
			}
		}
	}

	

	
	return 0;

}
