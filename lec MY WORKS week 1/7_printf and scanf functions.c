// printf function and scanf function 
#include<stdio.h>
//function main begins program execution
int main (void)
{    
    //declare variab;es
	int Age, hours ;
	char Name[5];
	float salary , payment ;
	// getting inputs
	printf("Please enter your name\n : ");
	scanf("%s" ,Name );
	printf("Please enter your Age\n : ");
	scanf("%d" ,Name );
	
	printf("Please enter your salary and working hours\n\n :  ");
	scanf(" %d %d" , salary  , hours  );
	
	/*payment = salary * hours;
	
	printf("Mr/Mrs %c you recive a payment !\n ", Name );
	printf("You recieve a payment\n : ", payment );*/
	
	
	return 0 ;
}
