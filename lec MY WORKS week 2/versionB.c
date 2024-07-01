/*This C Program to find the total expenditure for a holiday packages offered by the 
“Paradise Lanka” Hotel*/
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int option, persons ,days , additional_option ;
	double room_price, addition_prices, total ;
	char tours, y , Y , n , N ;
	
	//getting user inputs
	printf("Input Room option : ");
	scanf("%d",&option);
	printf("\n");
	
	printf("Number of Guests : ");
	scanf("%d",&persons);
	printf("\n");
	
	printf("Number of Days : ");
	scanf("%d",&days);
	printf("\n");
	
	//cheching user inputs
	if(option==1)
	{
		if(persons==1||persons==2)
		{
			room_price=45000.00*days;
		}
		else if(persons==3||persons==4||persons==5)
		{
			room_price=44000.00*days;
		}
		else if(persons>5)
		{
			room_price=43000.00*days;
		}
		else printf("Error !!! \n");
	}
	else if(option==2)
	{
		if(persons==1||persons==2)
		{
			room_price=40000.00*days;
		}
		else if(persons==3||persons==4||persons==5)
		{
			room_price=38000.00*days;
		}
		else if(persons>5)
		{
			room_price=35000.00*days;
		}
		else printf("Error !!! \n");
	}
	else if(option==3)
	{
		if(persons==1||persons==2)
		{
			room_price=37500.00*days;
		}
		else if(persons==3||persons==4||persons==5)
		{
			room_price=35000.00*days;
		}
		else if(persons>5)
		{
			room_price=32000.00*days;
		}
		else printf("Error !!! \n");
	}
	else printf("Error !!! \n");
	
	//additional tours
	printf("Do you need any additional tours? ( y/n) : ");
	scanf(" %c",&tours);
	
	//checking additional tour types
	while((tours=='y'||tours=='Y')&&(tours!='n'||tours!='N'))
	{
		printf("Input your option : ");
		scanf("%d",&additional_option);
		//check the additinaol option
		
		if(additional_option==1)
		{
			addition_prices=3500.00*persons*days;
		}
		else if(additional_option==2)
		{
			addition_prices=1000.00*persons*days;
		}
		else if(additional_option==3)
		{
			addition_prices=1500.00*persons*days;
		}
		else if(additional_option==4)
		{
			addition_prices=2000.00*persons*days;
		}
		else printf("Error !!! \n");
		
		//let the user input more additional tours
		printf("Do you need any additional tours? ( y/n) : ");
	    scanf(" %c",&tours);
	    
	    //continue the loop until entering 'n' or 'N'
		
	}
	
	//calculation part
	total=room_price+addition_prices;
	
	printf("Your total bill is  Rs: %.2f ",total);
	
	
	return 0;
	//end of main function
}
