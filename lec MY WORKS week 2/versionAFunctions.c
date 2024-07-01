/*Version A function */
#include<stdio.h>
//function main begins program execution
int main(void)
{
	int i , j ;
	
	for(i=1 ;i<=5 ; i++)
	{
		for(j=1 ; j<=i ; j++)
		{
			printf("%c", 96+i);
		}
		printf("\n");
	}
	
		printf("\n\n");	
	
	for(i=1 ; i<=5 ; i++)
	{
		for(j=1 ; j<=i ; j++)
		{
			printf("%d" , j);
		}
		printf("\n");
	}
		printf("\n\n");	
		
		
	for(i=1 ; i<=5 ; i++)
	{
		for(j=1 ; j<=i ; j++)
		{
			printf("*");
		}
		printf("\n");
	}	
	//without space
	for(i=1 ; i<=5 ; i++)
	{
		for(j=5 ; j >=i ; j--)
		{
			printf("*");
		}
		printf("\n");
	}
	printf("\n\n");	
	
	int space, rows ;
	
	rows=5;
	
	for(i=5 ; i>=1 ;i--)
	{
		for(space=1 ;space<= (rows-i) ; space++ )
		{
			printf(" ");
		}
		for(j=1 ; j<=(2*i - 1) ; j++)
		{
			printf("*");
		}
		printf("\n");

	}
	
	printf("\n\n");	
	
	for(i=1 ; i>=5 ; i--)
	{
		for(space=4 ; space >= (rows-i) ; space++ )
		{
			printf(" ");
		}
		for(j=1 ; j<=(2*i - 1) ; j++)
		{
			printf("*");
	    }
	    printf("\n");
			
	}
	
}



