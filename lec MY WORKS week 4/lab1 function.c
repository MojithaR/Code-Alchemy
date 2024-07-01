//functions
#include<stdio.h>
//declaration of function
int square(int X);
int cube(int X);
//function main begins program execution
int main(void)
{
	int x , area , volume ; //declaring variables
	
	printf("Enter the x value : "); //getting user inputs
	scanf("%d", &x);
	printf("\n");
	
	//calling function
	area=square(x);
	printf("Square Area = %d",area );
	printf("\n");
	
	volume=cube(x);
	printf("Volume of Cube= %d",volume);
	printf("\n");
	
	return 0;
	//end of main function
}
//function declaration (user define function)
int square(int X)
{
	//start function definition
	int area1; //declaring variable
	
	area1=X*X; //calculation part
	
	return area1;
	//return statement function
	//end of function deffinition
}
//function declaration (user difine function)
int cube(int X)
{
	//start function definition
	int Volume1; //declaring varibales
	
	Volume1=X* X*X; // calculation part
	
	return Volume1; // rerurn statement function
	//end of function definition
}
