/*THIS c PROGRAMM IS FOR WHILE LOOP*/
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int x;
	x=1;
	
	//starting while loop
	while(x<=10)
	{
		printf("%d",x);
		x++;
		printf("\n");
	}
	
	x=100;
	printf("\n\n");
	while(x>11 && x<=100)
	{
		printf("%d",x);
		x-=2;
		printf("\n");
	}
	
	return 0;
	//end of main function
}
