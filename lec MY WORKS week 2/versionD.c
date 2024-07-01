/*Introduction to programming version D " Fly with me" Travel agents*/
#include<stdio.h>
//function main begins program execution
int main(void)
{
	double charges , total ,ex_charges ; //declaring variables
	int option , seats , extraS_ops ;
	char type, E, B , Y , y , N , n ,extraS;
	
	printf("Fly with me travel agents\n");//introduction part
	
	printf("Input Airline Option : ");
	scanf("%d",&option);
	
	printf("Class type ( E/ B ) : ");
	scanf(" %c",&type);
	
	printf("Nmuber of seats : ");
	scanf("%d",&seats);
	
	if(option==1)
	{
		if(type=='E' )
		{
			charges=36500.00*seats;
		}
		else if(type=='B' )
		{
			charges=77600.00*seats;
		}
		
	}
	else if(option==2)
	{
		if(type=='E')
		{
			charges=35800.00*seats;
		}
		else if(type=='B')
		{
			charges=76500.00*seats;
		}
		
	}
	else if(option==3)
	{
		if(type=='E')
		{
			charges=54600.00*seats;
		}
		else if(type=='B')
		{
			charges=84700.00*seats;
		}
		
	}
	else if(option==4)
	{

		if(type=='E')
		{
			charges=28500.00*seats;
		}
		else if(type=='B')
		{
			charges=42800.00*seats;
		}
		
	}
	else
	{
		printf("Invalid option \n");
	}
	
	//extra services
	printf("\nDo you have any extra service ? : ");
	scanf(" %c",&extraS);
	
	while(extraS=='y' || extraS=='Y')
	{
		printf("Input your option : ");
		scanf("%d" , &extraS_ops);
		
		if(extraS_ops==1)
		{
			ex_charges+=7800.00;
		}
		else if(extraS_ops==2)
		{
			ex_charges+=1500.00;
		}
		else if(extraS_ops==3)
		{
			ex_charges+=19500.00;
		}
		else if(extraS_ops==4)
		{
			ex_charges+=2000.00;
		}
		else
		{
			printf("Invalid extra service !\n");
		}
	printf("\nDo you have any extra service ? : ");
	scanf(" %c",&extraS);
	}
	if (extraS=='n' || extraS=='N')
	{
		// calculation part
	    total=charges+ex_charges;
	    printf("Total Payment LKR: %.2f ",total);
		
	}
	return 0;
    //end of main function
	
}

