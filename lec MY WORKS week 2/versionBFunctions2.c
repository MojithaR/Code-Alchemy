/*this program is for calculate the discount given for wedding packages*/
#include<stdio.h>

//declaration of function
float getDiscountPrice(int noOfGuests , float chargePerGeust);
float getAmmount(int noOfGuests, float chargePerGeust , float discount);

//function main begins program execution
int main(void)
{
	//pattern loop 
	int i, j , x ;	
	x=96;
	
	//starint for loop
	for(i=1 ; i<=26 ;i++)
	{
		for(j=26 ;j>=i ; j--)
		{
			printf("%c",x+i);
		}
		printf("\n");
	}
	
	for(i=1; i<=26 ;i++)
	{
		for(j=1; j<=i ; j++)
		{
			printf("%c",x+j);
		}
		printf("\n");
	}
	
	int k,l,m,n,o,p,q,r,s,t;
	
	for(k=1;k<=2;k++)
	{
		for(l=1;l<=2;l++)
		{
			for(m=1;m<=2;m++)
			{
				printf("[%d %d %d]\n", k,l,m);
				
			}
			
		}
	}
	
	
	//declaring variables
	int guests ;
	float  per_charge , Dis , total, Beforecal_dis ;
	
	//getting user inputs
	printf("Enter number of guests : ");
	scanf("%d" ,&guests);
	printf("\n");
	
	printf("Enter charge Per guest :  ");
	scanf("%f" ,&per_charge);
	printf("\n");
	

	//calling function
	Dis=getDiscountPrice( guests ,  per_charge);
	total=getAmmount( guests,  per_charge ,  Dis);
	
	//display user outputs
	printf("Discount : %.2f",Dis);
	printf("\n");
	
	printf("Ammount to be paid : %.2f",total);
	printf("\n");
	
	return 0;
	//end of main function
}
//Function declarator (user difine function)
float getDiscountPrice(int noOfGuests , float chargePerGeust)
{
	//start difining function one
	//checcking user inputs starting if else loop
	if(noOfGuests>200)
	{
		return chargePerGeust*noOfGuests*10.0/100;
	}
	else if((noOfGuests <= 200 ) && (noOfGuests > 0))
	{
		return 0;
	}
	else
	{
		printf("invalid number of guests!!!");
		printf("\n");
	}
	//End of difining function one

		
}
//Function declarator (user difine function)
float getAmmount(int noOfGuests, float chargePerGeust , float discount)
{
	//start difining function two
	return noOfGuests*chargePerGeust-discount;
	//End of difining function two
		
}

