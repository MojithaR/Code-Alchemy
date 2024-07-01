/*Holiday package project user can enter package no and get the details*/
#include<stdio.h>
//function main begins program execution
int main (void)
{
	printf("Package\t Discount\t Ammount\n");
	printf("1\t 3%\t 8000\n");
	printf("2\t 5%\t 9500\n");
	printf("3\t 7%\t 12500\n");
	
	int numb, noOfpersons;
	float discount, total;//declare the variables
	
	printf("Please enter the package number \n : ");
	scanf("%d", &numb);
	
	printf("Please enter number of persons\n : ");
	scanf("%d", &noOfpersons);	
	
	
	switch(numb)
	{
		case 1:
			discount=8000*(3.0/100);
		    total=(8000-discount);//*noOfpersons;
		    printf("Your discount ammount is :%.2f \n",discount );
		    printf("Your total payable ammount is :%.2f \n",total );
		    break;
		    
		case 2:
			discount=9500*(5.0/100);
			total=(9500-discount);//*noOfpersons;
			printf("Your discount ammount is :%.2f \n",discount );
		    printf("Your total payable ammount is :%.2f \n",total );
		    break;
		case 3:
			discount=12500*(7.0/100);
		    total=(12500-discount);//*noOfpersons;
		    printf("Your discount ammount is :%.2f \n",discount );
		    printf("Your total payable ammount is :%.2f \n",total );
		    break;
		default:
		    printf("Invalid  enter correct package !/n" );      
		 
	}
	
	return 0;
}//end of main function
