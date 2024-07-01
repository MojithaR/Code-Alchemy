/*Additional tutorial december 16 delivary charges */
#include<stdio.h>
//function main begins prgram execution
int mani(void)
{   
    //declaring variables
    int number;
    float charges;
    
    printf("Enter the Distance km \n : ");
	scanf("%d", &number);
 
	if(number<=3 || number >0)
	{
		charges=50.00;
		printf("Your location distance  : %d \n", number);
		printf("Your dilivary charges  : %.2f\n", charges);
	}
	else if(number<=18 || number >3)
	{
		charges=75.00;
		printf("Your location distance  : %d \n", number);
		printf("Your dilivary charges  : %.2f\n", charges);
	}
	else if(number<=15 || number >8)
	{
		charges=125.00;
		printf("Your location distance  : %d\n ", number);
		printf("Your dilivary charges  : %.2f\n", charges);

	}
	else if(number>15)
	{
		charges=150.00;
		printf("Your location distance  : %d \n", number);
		printf("Your dilivary charges  : %.2f\n", charges);	
	}
	else
    {
    	printf("Invalid enter again\n");
	}
	

	
	return 0;
}
