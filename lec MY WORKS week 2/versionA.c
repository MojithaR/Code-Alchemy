/*This C program is Hotel rates of ABC Hotels (Pvt) ltd Version A*/
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int Type_Of_Rooms ,Days ;
	double Room_ammount , Discount_ammount , Total;
	char Board_type , F , H , card , G , S , B ;
	
	//getting user inputs
	
	printf("Enter type of Room : ");
	scanf("%d",&Type_Of_Rooms);
	printf("\n");
	
	while(Type_Of_Rooms!=-1)
	{	
	printf("Enter Accomadation Basis( F/H) : ");
	scanf(" %c",&Board_type);
	printf("\n");
	
	printf("Enter Number of days : ");
	scanf("%d",&Days);
	printf("\n");
	
		//cheching user inputs 
		switch(Type_Of_Rooms)
		{
		case 1:
			{
				if(Board_type=='F')
				{
					Room_ammount=25555.00*Days;
				}
				else if(Board_type=='H')
				{
					Room_ammount=17250.00*Days;
				}
				else printf("Invalid Type of Accomadation Basis !!! \n");
				
				break;
			}
	    case 2:
	   	    {
	   	    	if(Board_type=='F')
				{
					Room_ammount=17500.00*Days;
				}
				else if(Board_type=='H')
				{
					Room_ammount=12250.00*Days;
				}
				else printf("Invalid Type of Accomadation Basis !!! \n");
				
				break;
		    }
	    case 3:
	   	    {
	   	    	if(Board_type=='F')
				{
					Room_ammount=9000.00*Days;
				}
				else if(Board_type=='H')
				{
					Room_ammount=7250.00*Days;
				}
				else printf("Invalid Type of Accomadation Basis !!! \n");
				
				break;
		    }    
		default :
			{
				printf("Invalid Type Of Room ! \n");
			}
	   }
	
	//let the user input multiple times 
	printf("Enter type of Room : ");
	scanf("%d",&Type_Of_Rooms);
	printf("\n");
		
	}
	//descount details
	
	//getting user card details
	printf("Enter Reward card type ( G,S,B ) :  ");
	scanf(" %c",&card);
	printf("\n");
	
	switch(card)
	{
	case 'G':
		{
			Discount_ammount=Room_ammount*(12.5/100.0);
			break;
		}
	case 'S':
		{
			Discount_ammount=Room_ammount*(11.5/100.0);
			break;
		}
	case 'B':
		{
			Discount_ammount=Room_ammount*(9.5/100.0);
		}
	default :
		{
			printf("Invalid Card type ! \n");
		}
   }
	//calculation part
	
	Total=Room_ammount-Discount_ammount;
	
	//display total
	printf("Ammount  Rs: %.2f " ,Total);
	
	return 0;
	//end of main function
}
