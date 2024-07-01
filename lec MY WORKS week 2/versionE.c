/*This C program is for  medical insurance schemes 
proposed by an Life insurance company version E*/
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	char Insurance_type , A , N , D , S , User_type , F , I , y , Y , n , resault  ;
	double Monthly_charge , Additional_Charge , Total ;
	int num_children, addition_member;
	
	//getting inputs from user
	printf("Insurance Type  : ");
	scanf(" %c",&Insurance_type);
	printf("\n");
	
	printf("Family or Individual ( F/I) : ");
	scanf(" %c",&User_type);
    printf("\n");
	
	while((resault=='y' || resault=='Y' ) && (resault!='n'||resault!='N') && (Insurance_type=='A'))
	{	
		//checking user inputs
		if(Insurance_type=='A')
		{
			if(User_type=='F')
			{
				printf("Enter number of children : ");
				scanf("%d",num_children);
				
				if(num_children<=2)
				{
					
					//calculation part
				    Monthly_charge=5200.00;
					
				}
				else if(num_children>2)
				{
					addition_member=num_children-2;
					Monthly_charge=5200.00+ (5200.00*10.0/100.0*addition_member);
				}
				else printf("Invalid Number of child !!! \n");
				
			}
			else if(User_type=='I')
			{
				//calculation part
				Monthly_charge=4500.00;
			}
			else printf("Invalid User type Enter  F or I !!! \n");
		}
		else if(Insurance_type=='N')
		{
			if(User_type=='F')
			{
				printf("Enter number of children : ");
				scanf("%d",num_children);
				
				if(num_children<=2)
				{
					
					//calculation part
				    Monthly_charge=4300.00;
					
				}
				else if(num_children>2)
				{
					addition_member=num_children-2;
					Monthly_charge=4300.00+ (4300.00*10.0/100.0*addition_member);
				}
				else printf("Invalid Number of child !!! \n");
				
			}
			else if(User_type=='I')
			{
				//calculation part
				Monthly_charge=3100.00;
			}
			else printf("Invalid User type Enter  F or I !!! \n");
		}
		else if(Insurance_type=='D')
		{
			if(User_type=='F')
			{
				printf("Enter number of children : ");
				scanf("%d",num_children);
				
				if(num_children<=2)
				{
					
					//calculation part
				    Monthly_charge=4800.00;
					
				}
				else if(num_children>2)
				{
					addition_member=num_children-2;
					Monthly_charge=4800.00+ (4800.00*10.0/100.0*addition_member);
				}
				else printf("Invalid Number of child !!! \n");
				
			}
			else if(User_type=='I')
			{
				//calculation part
				Monthly_charge=3600.00;
			}
			else printf("Invalid User type Enter  F or I !!! \n");
		}
		else if(Insurance_type=='S')
		{
			if(User_type=='F')
			{
				printf("Enter number of children : ");
				scanf("%d",num_children);
				
				if(num_children<=2)
				{
					
					//calculation part
				    Monthly_charge=3800.00;
					
				}
				else if(num_children>2)
				{
					addition_member=num_children-2;
					Monthly_charge=3800.00+ (3800.00*10.0/100.0*addition_member);
				}
				else printf("Invalid Number of child !!! \n");
				
			}
			else if(User_type=='I')
			{
				//calculation part
				Monthly_charge=3300.00;
			}
			else printf("Invalid User type Enter  F or I !!! \n");
		}
		else printf("Invalid Insuarance Type !!! \n");
		
	//getting more inputs from user
	printf("Do you want to continue ?( Y/N) :  ");
	scanf(" %c",&resault);
		
		
	}
	
	//final calculation part
	
	Total=Monthly_charge;
	printf("Total ammount Rs : %.2f ",Total );
	
	
	return 0;
	//end of main function
}
