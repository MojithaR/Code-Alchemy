// cascadian if else statement in C programming
#include <stdio.h>
//function main begins progrm execution
int main ()
{
	int no1, no2, ans , operator;
	//user inputs 
	printf("Enter the 1st Number : \n");
	scanf("%d", &no1);

	printf("Enter the 2nd  Number : \n");
	scanf("%d", &no2);
	
	printf("\toperators \t\n ");
	printf("\t Addition      --->  1\n ");
	printf("\t substraction  --->  2\n ");
	printf("\t multipication --->  3\n ");
	printf("\t division      --->  4\n ");
	printf("\t reminder      --->  3\n\n ");
	
	printf("Enter the operator :  \n");
	scanf("%d", &operator);
	
	switch(operator)
	{
		case 1 : 
		ans =no1 + no2;
		printf("Addition Answear is : %d\n" ,ans );
		break;
		
	    case 2 : 
		ans =no1 - no2;
		printf("substraction Answear is : %d\n" ,ans );
		break;
		
		case 3 : 
		ans =no1 * no2;
		printf("multipication Answear is : %d\n" ,ans );
		break;
		
		case 4 : 
		ans =no1 / no2;
		printf("division Answear is : %d\n" ,ans );
		break;
		
		case 5 : 
		ans =no1 % no2;
		printf("reminder Answear is : %d\n" ,ans );
		break;
		
		default:
			printf("you entered the invalid input \n");
	}
	

	return 0;
}//end of main function
