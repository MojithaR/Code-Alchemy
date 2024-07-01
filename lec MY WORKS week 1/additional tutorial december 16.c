/*Additional tutorial december 16 2022*/
#include<stdio.h>
//function main begins prgram execution
int mani(void)
{   
    //declaring variables
    int number, i;
    float fees1,fees2,fees3;
    
    for(i=1;i<-100;++i)
    {
    	printf("Enter the program number\n : ");
	    scanf("%d", &number);
            
    if(number==-99)
	    break;

	}

	switch(number)
	{
		case 1:
			fees1=1500.00;
			printf("Your selected program : Java programming ");
			printf("Your Registation fee is : %.2f\n", fees1);
			break;
		case 2:
			fees2=1000.00;
			printf("Your selected program : Web designing ");
			printf("Your Registation fee is : %.2f\n", fees2);
			break;
		case 3:
			fees3=2000.00;
			printf("Your selected program : Computer Network ");
			printf("Your Registation fee is : %.2f\n", fees3);
			break;	
	}
	
	return 0;
}
