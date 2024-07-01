#include<stdio.h>
int main()
{
	int option,seat,exoption;
	char type,extra;
	float amount,bill,total,exbill;
	
	printf("Input Airline Option : ");
	scanf("%d",&option);
	
	printf("Class type ( E/ B ) : ");
	scanf(" %c",&type);
	
	printf("Nmuber of seats : ");
	scanf("%d",&seat);
	

	if(option==1)         //check first options
	{
		if(type=='E')
		{
			amount=36500.00*seat;
		}else if(type=='B')
		{
			amount=77600.00*seat;
		}
	}else if(option==2)
	{
		if(type=='E')
		{
			amount=35800.00*seat;
		}else if(type=='B')
		{
			amount=76500.00*seat;
		}
	}else if (option==3)
	{
		if(type=='E')
		{
			amount=54600.00*seat;
		}else if(type=='B')
		{
			amount=84700.00*seat;
		}
	}else if(option==4)
	{
		if(type=='E')
		{
			amount=28500.00*seat;
		}else if(type=='B')
		{
			amount=42800.00*seat;   //and calculate amounts
		}
	}else printf("error\n");
	
	
	
	printf("\nDo you have any extra service ? : ");
	scanf(" %c",&extra);
	
while ((extra=='y' || extra=='Y') && (extra!='n' || extra!='N'))	 //check extra service 
{
	printf("Input your option : ");
	scanf("%d",&exoption);
	
	if(exoption==1)
	{
		bill=7800.00;
	}else if(exoption==2)
	{
		bill=1500;
	}else if(exoption==3)
	{
		bill=19500.00;
		
	}else if(exoption==4)
	{
		bill=2000.00;
	}
	
	exbill=exbill+bill; // calculate extra service bill
	
	printf("Do you have any extra service ? : ");
	scanf(" %c",&extra);
}
	total=exbill+amount;    // get total budget
	printf("Total Price : %.2f",total);
	
	
	
	
	
	
	
	
	
	
	
return 0;
}
