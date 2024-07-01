//Do while loop explanation
#include<stdio.h>
int main(void)
{
	int x=0;
	{
		printf("This will print Numbers !!!\n");
        do
        {
        	x=x+5;
        	printf("%d",x);
        	printf("\n");
        	
		}while(x<100);
		
		return 0;
	}
}
