#include<stdio.h>
int main(void)
{
	int marks;
	
	printf("Enter your marks : ");
	scanf("%d" , &marks);
	
	if (marks>=10)
	{
		printf("pass\n");
	}
	else
	{
		printf("fail");
	}
	printf("keep it up ! ");
	
	return 0;
	
	
}
