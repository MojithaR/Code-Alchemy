/*THis program is for Hotel paradise project
IT22560094 */
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	int Option , Num_person , Days , Add_tours ;
	double Room_Charges , Add_charges , Total ;
	char Y , y , N ,n ,tours ;
	
	//getting user inputs
	printf("Enter Room Option : ");
	scanf("%d" , &Option);
	printf("\n");
	
	printf("Enter Number of persons : ");
	scanf("%d" , &Num_person);
	printf("\n");
	
	printf("Enter Days  : ");
	scanf("%d" , &Days);
	printf("\n");
	
	//cheching user inputs
	//start if else statement
	if(Option==1)
	{
		if(Num_person>0 && Num_person<=2)
		{
			Room_Charges=45000.00 * Days;
		}
		else if(Num_person==3 || Num_person==4 || Num_person==5)
		{
			Room_Charges=44000.00 * Days;
		}
		else if(Num_person>5)
		{
			Room_Charges=43000.00 * Days;	
		}
		else
		{
			printf("invalid Number of geusts !!! \n");
		}
	}
	else if(Option==2)
	{
		if(Num_person>0 && Num_person<=2)
		{
			Room_Charges = 40000 * Days;
		}
		else if(Num_person>=3 && Num_person<=5)
		{
			Room_Charges=38000 *Days;
		}
		else if(Num_person>5)
		{
			Room_Charges=35000 *Days;	
		}
		else
		{
			printf("invalid Number of geusts !!! \n");
		}
	}
	else if(Option==3)
	{
		if(Num_person>0 && Num_person<=2)
		{
			Room_Charges=37500 *Days;
		}
		else if(Num_person>=3 && Num_person<=5)
		{
			Room_Charges=35000 *Days;
		}
		else if(Num_person>5)
		{
			Room_Charges=32000 *Days;	
		}
		else
		{
			printf("invalid Number of geusts !!! \n");
		}
	}
	else
	{
		printf("invalid Room Option !!! \n");
	}
	
	//asking additional tours
	printf("Do you need any additional tours (y/n)  :  ");
	scanf(" %c", &tours);
	
	//repeat until user enters n or N
	while((tours=='y' || tours=='Y' ) && (tours!='n' || tours!='N'))
	{
		printf("Enter option : ");
		scanf("%d", &Add_tours);
		
		//checking user inputs 
		if(Add_tours==1)
		{
			printf("You selected safari ! ");
			printf("\n");
			Add_charges=3500 *Num_person*Days;
		}
		else if(Add_tours==2)
		{
			printf("You selected Bird watching ! ");
			printf("\n");
			Add_charges=1000.00*(Num_person*Days);
		}
		else if(Add_tours==3)
		{
			printf("You selected Boat Ride ! ");
			printf("\n");
			Add_charges=1500.00 * Num_person * Days;
		}
		else if(Add_tours==4)
		{
			printf("You selected City Tour ! ");
			printf("\n");
			Add_charges=2000.00 * Num_person * Days;
		}
		else
		{
			printf("Error !!!");
		}
		
		//getting more inputs
		printf("Do you need any additional tours (y/n)  :  ");
	    scanf(" %c" , &tours);
	}
	
	//calculation part
	Total=Room_Charges+Add_charges;
	
	//Display user chareges have to pay
	printf("Room Price :  %.2f\n " , &Room_Charges );
	printf("Tour Price :  %.2f\n " , &Add_charges );
	printf("Total Price :  %.2f " , &Total );
	
	return 0;
	//end of main function
}
