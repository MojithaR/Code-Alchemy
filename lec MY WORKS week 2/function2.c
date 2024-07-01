//functions 2
#include<stdio.h>
//declaration function
int calculatesum(int a, int b);
//function main begins program execution
int main ()
{
	int n1,n2, sum;
	
	printf("enter two numbers : ");
	printf("\n");
	scanf("%d %d", &n1, &n2);
	
	sum=calculatesum(n1,n2);
	printf("sum is :%d", sum);
	
	return 0;
	//end of main function
}
//function declaration ( user difine function)
int calculatesum(int a, int b)
{   
    //start of function definition
	int addition;
	addition= a+b;
	return addition; //return statement function
	//end of function definition
}
