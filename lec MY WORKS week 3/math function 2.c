/*This is a math function calculator*/
#include<stdio.h>
#include<math.h> //declaring math functin
int main(void)
{
	//declaring varaibles
	int x ,num;
	float q ;
	char answear;
	
	//getting user inputs
	printf("Enter intiger number : ");
	scanf(" %d",&x);
	printf("\n");
	
	printf("Enter fractional number : ");
	scanf(" %f",&q);
	printf("\n");
	
	printf("Square\t root: 1\n");
	printf("Rasied\t power: 2\n");
	printf("Expotential\t Function: 3\n");
	printf("Narural \t logaritham: 4\n");
	printf("Round\t to \t large :5 \n");
	printf("Round\t to \t small : 6\n");
	
	while((answear =='y'|| answear=='Y')&&((answear !='n'|| answear!='N')))
	{
		printf("Enter Mathamatical Function : ");
		scanf("%d", &num);
		
		//starting if else loop
		if(num==1)
		{
			printf("Square root of %d is : %.2f ", x , sqrt(x));
	        printf("\n");
	        printf("Square root of %f is : %.2f ", q , sqrt(q));
	        printf("\n\n");
		}
		else if(num==2)
		{
			printf("%d To the power %d is : %.2f ", x, q , pow(x,q));
        	printf("\n\n");
		}
		else if(num==3)
		{
			printf("Expotential Function e , %d : %f " ,x , exp(q));
	        printf("\n\n");
		}
		else if(num==4)
		{
			printf("log%f = %f", q, log(q));
	        printf("\n\n");
		}
		else if(num==5)
		{
			printf("Round %f to large : %.2f", q , ceil(q));
	        printf("\n\n");
		}
		else if(num==6)
		{
			printf("Round %f to small : %.2f", q, floor(q));
			printf("\n\n");
		}
		else
		{
			printf("Error !\n");
		}
		
		printf("Do you want to continue ? (y/n): ");
	    scanf("%c",&answear);
     	printf("\n");
		
	}
	
	
	return 0;
	//end of main function
}

