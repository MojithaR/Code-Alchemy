/*This is using math function in C programming*/
#include<stdio.h>
#include<math.h> //math function
//function main brgins program execution
int main(void)
{
	//declaring varaibles
	int x ,p,q;
	float y , r,s;
	
	//getting user inputs
	printf("Enter intiger number : ");
	scanf(" %d",&x);
	printf("\n");
	
	printf("Enter fractional number : ");
	scanf(" %f",&y);
	printf("\n");
	
	//cheking user inputs
	printf("Square\t root\n");
	printf("Square root of %d is : %.2f ", x , sqrt(x));
	printf("\n");
	printf("Square root of %f is : %.2f ", y , sqrt(y));
	printf("\n\n");
	
	printf("Rasied\t power\n");
	printf("Enter base : ");
	scanf("%d", &p );  
	printf("\nEnter power :  ");
	scanf("%d",& q);
	printf("\n");
	printf("%d To the power %d is : %.2f ", p, q , pow(p,q));
	printf("\n\n");
	
	printf("Expotential\t Function\n");
	printf("Expotential Function e , %d : %f " ,q , exp(q));
	printf("\n\n");
	
	printf("Narural \t logaritham\n");
	printf("Enter number : ");
	scanf("%d", &r);
	printf("\n");
	printf("log%f = %f", r, log(r));
	printf("\n\n");
	
	printf("Round\t to \t large");
	printf("\n");
	printf("Enter Number : ");
	scanf("%f", &s);
	printf("\n");
	printf("Round %f to large : %.2f", s , ceil(s));
	printf("\n\n");
	
	printf("Round\t to \t small");
	printf("\n");
	printf("Round %f to small : %.2f", s, floor(s));
	
	
	
	return 0;
	//end of main function
	
	
	
}
