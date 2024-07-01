//THis is a if condition sample program
#include<stdio.h>
//function main begins program execution
int main(void)
{
	int number1,number2; //declaring variables
	
	printf("Enter Two numbers : ");
	scanf("%d %d", &number1 ,&number2 );
	printf("\n");
	
	if(number1==number2)//if condition
	{
		printf("%d number is equal to %d\n !!!", number1,number2 );
	}
	if(number1 != number2)
	{
		printf("%d number is not equal to %d\n !!!",number1 , number2 );
	}
	
	int marks;//declaring variables
	
	printf("Enter your marks : ");
	printf("\n");
	scanf("%d", &marks );
	
	//if condition
	if(marks>=0 && marks<=34)
	{
		printf("Your resault : Fail \n");
	}
	if(marks>=35 && marks<=100)
	{
		printf("Your resault : Pass\n");
		printf("Congradulations !!!\n");
	}
	if(marks<0 || marks>100)
	{
		printf("Invalid marks ! please try again !\n");
		printf("marks should be between 0 and 100 !\n");
	}
	
	
	return 0;
	//end of main function
}

