//This program calculates discount and final payment of a customer
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	double totalpay, finalpay, discount;
	
	//getting inputs
	printf("Enter total payment of a customer:  ");
	scanf("%lf", &totalpay );
	
	//calculations 
	discount= totalpay* (15.0 /100) ;
	
	finalpay= totalpay - discount ;
	
	printf("Discount is : %.2f\n ", discount );
	printf("Final amount is : %.2f\n", finalpay );
	
	
	return 0;
	//end of main function
}

/*
if there is not display 1000 in final pay, the point is "el Ef" 
not the "one ef"
scanf("%lf", &totalPay); 
*/

