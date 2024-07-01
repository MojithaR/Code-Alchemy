// cascadian if else statement in C programming
#include <stdio.h>
//function main begins progrm execution
int main ()
{
	int x,num;
	
	printf("Enter Multipication Number : ");
	scanf("%d",&num );
	
	//for(initialisation ; condition ; incriment or dicriment){}
	for( x= 1; x <= 12; x++)
	{
		printf("%d * %d = %d",num, x, num*x);
		printf("\n");
	}


	return 0;
}//end of main function
