// cascadian if else statement in C programming
#include <stdio.h>
//function main begins progrm execution
int main ()
{
	int x,y,z;
	//x=100;
	
	for( x=100 ; x <=100 ; x-=10)
	{
		if (x%7 ==0)
		{
			break;
		}
		printf("%d\n", x);
	}
   printf("zore to hundred 10 to 10 series\n\n ");
   
   	for( y=0 ; y <=100 ; y+=10)
	{
		if (y%7 ==0)
		{
			continue;
		}
		printf("%d\n", y);
	}
   printf("zore to hundred 10 to 10 series\n\n ");

	for( z=10 ; z <=100 ; z+=10)
	{
		if (z%7 ==0)
		{
			goto lable1;
		}
		printf("%d\n", z);
	}
	
   lable1 : printf(" %d can be divided by 7\n", z);
   printf("zore to hundred 10 to 10 series\n\n ");
	return 0;
}//end of main function
