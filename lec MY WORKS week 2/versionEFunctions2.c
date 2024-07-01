#include<stdio.h>
#include<stdlib.h>
int main(void)
{
	int i;
	float marks;
	char n;
	
	printf("Enter your mark : ");
	scanf("%f",&marks );
	printf("\n");
	
	float min=marks ,max=marks;
	
	printf("Enter your mark : ");
	scanf("%f",&marks );
	printf("\n");
	
	min=(marks<min) ? marks:min;
	max=(marks>max) ? marks:max;
				
	printf("min mark : %.2f and max mark : %.2f ",min,max );

	
	return 0;

}
