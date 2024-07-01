//functions
#include<stdio.h>
//declaration of function
int calculatesum(int a, int b);
//function main begins program execution
int main()
{
	int n1,n2, sum; //declaring variab;es
	printf("enter two numbers : \n");
	scanf("%d %d" , &n1,&n2);
	
	//calling function
	sum=calculatesum(n1,n2);
	printf("sum=%d",sum);
	return 0;
	//end of main function	
}
//function declRtion (user difine function)
int calculatesum(int a,int b)
{
	//start of funtion definition
	int addition;
	addition= a+b;
	return addition;       //return statement function
	//end of function definition
}
