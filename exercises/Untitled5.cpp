#include<stdio.h>
//function main begins programm execution
int main()
{
	int number;
	
	printf("enter a number : ");
	scanf("%d", &number);
	
	if( number >= 0 )
	{
		printf("%d ", number );
	}
	if ( number < 0 )
	{
		printf("%d ", -1 * number);
	}
	
	
	return 0;
}
