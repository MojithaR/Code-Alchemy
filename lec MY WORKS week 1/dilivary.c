/*Additional tutorial december 16 delivary charges */
#include<stdio.h>
//function main begins prgram execution
int mani(void)
{   
    //declaring variables
    int number;
    float charges;
    
    printf("Enter the Distance km \n : ");
	scanf("%d", &number);
 
	if(number<=3 || number >0)
	{
		charges=50.00;
		printf("Your location distance  : %d \n", number);
		printf("Your dilivary charges  : %.2f\n", charges);
	}
	else if(number<=18 || number >3)
	{
		charges=75.00;
		printf("Your location distance  : %d \n", number);
		printf("Your dilivary charges  : %.2f\n", charges);
	}
	else if(number<=15 || number >8)
	{
		charges=125.00;
		printf("Your location distance  : %d\n ", number);
		printf("Your dilivary charges  : %.2f\n", charges);

	}
	else if(number>15)
	{
		charges=150.00;
		printf("Your location distance  : %d \n", number);
		printf("Your dilivary charges  : %.2f\n", charges);	
	}
	else
    {
    	printf("Invalid enter again\n");
	}
	

	
	return 0;
}
[4:39 PM] Poorna Panduwawala
#include<stdio.h>

int main(void){
    int distance;
    float charge = 0;
   
printf("Enter the distance : ");
scanf("%d",&distance);

    while(distance != 0){
       
       
        if(distance<=3){
            charge = charge + 50.00;
        }
        else if(distance<=8){
            charge = charge + 75.00;
        }
        else if(distance<=15){
            charge = charge + 125.00;
        }
        else {
            charge = charge + 150.00;
        }
       
        printf("Enter the distance : ");
        scanf("%d",&distance);
   
    }
   
    printf("Total charges: %.2f",charge);
   
    return 0;
}



