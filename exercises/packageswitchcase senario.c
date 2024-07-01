#include<stdio.h>
int main()
{
	int packagetype, NoOfperson;
	float totalcost;
	
	printf(" Enter package type (1, 2, 3) : ");
	scanf("%d", &packagetype );
	
	printf(" Number of person : ");
	scanf("%d", &NoOfperson );
	
	//switch case senario implimentation
	//1, 2, 3 = package type
	switch(packagetype)//key variable base on the pkg type
	{
		case 1 : totalcost = 2000.00 * NoOfperson ;
		         printf("Total cost = Rs %.2f" , totalcost );
			break ;
			
		case 2 : totalcost = 5000.00 * NoOfperson ;
		         printf("Total cost = Rs %.2f" , totalcost );
			break ;	
			
		case 3 : totalcost = 7000.00 * NoOfperson ;
		         printf("Total cost = Rs %.2f" , totalcost );
			break ;	
			
		default : printf("invalid package type ! ");
		    break ;	
	}
	
		

	
	
		
	return 0;
	
}
