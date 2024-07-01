// cascadian if else statement in C programming
#include <stdio.h>
//function main begins progrm execution
int main (void)
{
	int marks;
	
	printf("Please Enter your marks : \n");
	scanf(" %d", &marks);
	
	if (marks >=35 && marks <=100)
	{
		printf("pass the exam\n");
	}
	else if(marks <35 || marks <0)
	{
		printf("fail Try next year\n");
    }
    else
    {
    	printf("Invalid enter again\n");
	}
	return 0;
}//end of main function

