#include<stdio.h>
int main(void)
{
	//creating array 
	int userRating[5];
	int i,k;
	
	for(k=0;k<5;k++)
	{
		userRating[k]=0;
	}
	
	//declaring variales
	int j ,rating;
	
	//getting user inputs
	printf("Enter ratings number (1 to 5) : ");
	scanf("%d",&rating);
	printf("\n");
	
	while(rating==-99)
	{
		if(rating>=1 && rating<=5)
		{
				if(rating==1)
				{
					k=1;
					userRating[k];
				}
				else if(rating==2)
				{
					userRating[1]=+1;
				}
				else if(rating==3)
				{
					userRating[2]=+1;
				}
				else if(rating==4)
				{
					userRating[3]=+1;
				}
				else if(rating==5)
				{
					userRating[4]=+1;
				}

			
		}
		else if(rating>5|| rating<0)
		{
			printf("invalid !");

		}
		printf("\n\n");
		printf("Enter ratings number (1 to 5) : ");
	    scanf("%d",&rating);
	    printf("\n");

   }
   
   	    
	    for(i=1; i<=5 ; i++)
		{
			printf("%d",i);
			printf("\n");
										
			for(j=0; j<userRating[k]; j++)
			{
				printf("*");
			}
			printf("\n");

				
	    }
	return 0;
}
