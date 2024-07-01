// cascadian if else statement in C programming
#include <stdio.h>
//function main begins progrm execution
int main ()
{
	int x, y;
	
	for(x=1; x<=10 ; x++)
	{
		printf("Multipication table for %d\n", x);
		for(y=1;y<=12;y++)
		{
			printf("%d\t", x*y);
		}
		printf("\n\n");
	}



	return 0;
}//end of main function
