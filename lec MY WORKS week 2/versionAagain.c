/*This program will contains Hotel rates of ABC Hotels (Pvt) ltd
room billing program*/
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//dceclaring variables
	int Type_of_Room , days ;
	char Board_type , F , H , Card_type , G , S , B ;
	float Room_ammount , Discount_ammount , Total ;
	
	//getting user inputs
	printf("Enter type of room (ex: 1/2/3)  :  ");
	scanf("%d" ,&Type_of_Room);
	printf("\n");
	
	printf("Enter Accomadation basis (ex:F/H)  :  ");
	scanf(" %c" ,&Board_type);
	printf("\n");
	
	printf("Enter number of days :  ");
	scanf("%d" ,&days);
	printf("\n");
	
	printf("Enter Reward card type (ex: G /S /B) :  ");
	scanf(" %c" ,&Card_type);
	printf("\n");
	
	//checking user inputs
	while(Type_of_Room==-1)
	{
		//starting nesterd if else loop
		if(Type_of_Room==1)
		{
			if(Board_type=='F')
			{
				Room_ammount=25555.00*days;
			}
			else if(Board_type=='H')
			{
				Room_ammount=17250.00*days;
			}
			else 
			{
				printf("Invalide board type !!!\n");
			}
		}
		else if(Type_of_Room==2)
		{
			if(Board_type=='F')
			{
				Room_ammount=17500.00*days;
			}
			else if(Board_type=='H')
			{
				Room_ammount=12250.00*days;
			}
			else 
			{
				printf("Invalide board type !!!\n");
			}
	    }
		else if(Type_of_Room==3)
		{
			if(Board_type=='F')
			{
				Room_ammount=9000.00*days;
			}
			else if(Board_type=='H')
			{
				Room_ammount=7250.00*days;
			}
			else 
			{
				printf("Invalide board type !!!\n");
			}
	    } 
		else
		{
			printf("Invalid type of Room ! \n");			
		}      			
	}
	
	//check the discount
	switch(Card_type)
	{
		case 'G':
			{
				//calculation part 'Discount'
				Discount_ammount=Room_ammount*(12.5/(float)100);
				break;				
			}
		case 'S':
			{
				//calculation part 'Discount'
				Discount_ammount=Room_ammount*(11.5/(float)100);
				break;					
			}
		case 'B':
			{
				//calculation part 'Discount'
				Discount_ammount=Room_ammount*(9.5/(float)100);	
				break;				
			}
		default :
			{
				printf("Invalid card type !!! \n");
				break;
			}					
	}
	
	//calculation part
	Total=Room_ammount-Discount_ammount;
	
	//display outputs
	printf("Your Room ammount Rs : %.2f \n", Room_ammount);
	printf("Your Discount ammount Rs: %.2f\n ", Discount_ammount);
	printf("Your payable Ammount Rs: %.2f\n ", Total );
	
	return 0;
	//end of main function
	
}
