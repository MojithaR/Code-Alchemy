//relational operators in C programming
#include<stdio.h>
//function main begins program execution
int main(void)
{
	printf("\n AND Operator \n");
	printf("%d\n", 0&&0 );
	printf("%d\n", 0&&234 );
	printf("%d\n", 345&&0 );
	printf("%d\n\n", 678&&987 );
	
	printf("\n OR Operator \n");
	printf("%d\n", 0||0  );
	printf("%d\n", 0||234 );
	printf("%d\n", 345||0 );
	printf("%d\n\n", 678||987 );
	
	printf("\n NOT Operator \n");
	printf("%d\n", ! 0);
	printf("%d\n", ! 598 );

	return 0;
	
}//end of main function
