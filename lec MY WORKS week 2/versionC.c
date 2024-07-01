/*This is IP version C pizza paradise project*/
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int option, numberOfpizza , ex_option ;
	char size, P , M , L ,ex_topping ;
	double price, extra_charges , total;
	
	//getting user inputs
	printf("Input Pizza Option :  ");
	scanf("%d",&option );
	
	printf("\n Size of the Pizza {P/M/L) : ");
	scanf(" %c",&size );
	
	printf("NUmber of pizzas: ");
	scanf("%d",&numberOfpizza);
		
	//checking user inpus
	if(option==1)
	{
		if(size=='P')
		{
			price=560.00*numberOfpizza;
		}
		else if(size=='M')
		{
			price=920.00*numberOfpizza;
		}
		else if(size=='L')
		{
			price=1800.00*numberOfpizza;	
		}
		else printf("error !\n");
	}
	else if(option==2)
	{
		if(size=='P')
		{
			price=340.00*numberOfpizza;
		}
		else if(size=='M')
		{
			price=660.00*numberOfpizza;
		}
		else if(size=='L')
		{
			price=1300.00*numberOfpizza;	
		}
		else printf("error !\n");
	}
	else if(option==3)
	{
		if(size=='P')
		{
			price=760.00*numberOfpizza;
		}
		else if(size=='M')
		{
			price=1100.00*numberOfpizza;
		}
		else if(size=='L')
		{
			price=2100.00*numberOfpizza;	
		}
		else printf("error !\n");
	}
	//extra topiing 
	printf("\n Do you need any extra topping ( y/n)?: ");
	scanf(" %c",&ex_topping);
	
	while((ex_topping=='y' || ex_topping=='Y') && (ex_topping!='n' || ex_topping!='N'))
	{
		printf("\n Input your option: ");
	    scanf("%d",&ex_option);
	    
	    //checking extra optiion
	    if(ex_option==1)
	    {
	    	extra_charges+=320.00*numberOfpizza;	
		}
		else if(ex_option==2)
	    {
	    	extra_charges+=140.00*numberOfpizza;	
		}
		else if(ex_option==3)
	    {
	    	extra_charges+=130.00*numberOfpizza; 	
		}
		else if(ex_option==4)
	    {
	    	extra_charges+=150.00*numberOfpizza; 	
		}
		else printf("error !\n");
		
		//let user input more extra topping
	printf("\nDo you need any extra topping ( y/n)?: ");
	scanf(" %c",&ex_topping);	
	}
	//user donot neeed any extra topping
	
	total=price+extra_charges; //calculation part
	
	printf("\nTotal Price Rs: %.2f ",total );
	
	return 0;
	//end of main function
}

