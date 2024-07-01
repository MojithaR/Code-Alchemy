#include <stdio.h>
#define size 8

void move_n_right(int numArray[], int n);

int main(void)
{
	int numArray[size];
	int i;
	
	for(i=0;i<=7;i++)
	{
		printf("Enter the number: ");
		scanf("%d",&numArray[i]);
		
	}
	
	for(i=0;i<=7;i++)
	{
		printf("%d\t",numArray[i]);
	}
	
	printf ("\n");
	
	int n;
	
	printf ("Enter How many positions do you want to move : ");
	scanf  ("%d", &n);
	
	if (n < 8 && n > 0)
	{
		move_n_right(numArray, n);
	}
	
	else 
	{
		printf ("Invalid number.\n");
	}
	
	return 0;
}

void move_n_right(int numArray[], int n)
{
	int i;
	
	int temp[size];
	
	for (i=0; i<size; ++i)
	{
		temp[(i+n)%size] = numArray[i];
	}
	
	printf ("Modified Array Elements : ");
		
	for (i=0; i<size; ++i)
	{
		printf ("%d\t", numArray[i]);
	}
	
	
}
