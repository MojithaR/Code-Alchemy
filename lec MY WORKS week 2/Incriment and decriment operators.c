//Incriment and dicriment operater self learning week 2
#include<stdio.h>
int main(void)
//function main begins program execution
{
	printf("Prefix incriment Operator!\n");
	int a;
	a=2;
	printf("Assigne value of a : 2\n");
	printf("we are calling a: %d\n", a);
	printf("we are calling ++a: %d\n",++a);
	printf("we are calling a again: %d\n", a);
	printf("\n\n");
	
	printf("Postfix Incriment operator!\n");
	int b;
	b=7;
	printf("we are calling b: %d\n", b);
	printf("we are calling b++ : %d\n", b++);
	printf("We are calling again b : %d\n", b);
	printf("\n\n");
	
	printf("Prefix Dicriment operator!\n");
	int c=8;
	printf("assigne value of c : %d\n", c);
	printf("We are calling --c: %d\n", --c);
	printf("we are calling again c: %d\n", c);
	printf("\n\n");
	
	printf("Postfix Dicriment Operator!\n");
	int d=5;
	printf("assigned value of d : %d\n",d);
	printf("we are calling d-- : %d\n", d--);
	printf("we are calling again d : %d\n", d);
	
	return 0;
	//end of main function
}
