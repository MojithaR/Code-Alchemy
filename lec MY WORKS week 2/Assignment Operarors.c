//Assignment Operators week 2 practice
#include <stdio.h>
//function main begins program execution
int main(void)
{
	int x = 0;
	int y;
	y=3;
	printf("Assignment value of x is : %d\n ",x );
	printf("Assignment value of y is :%d\n ",y );
    printf("\n\n");
	
   //Addition assignment operator
   x+=3; //x= X=3 = 0+3= 3
   printf("new Assignment value of x :%d\n ",x);
   printf("new assignment value of y :%d\n ",y+=2);//Y=y+2, 3+2, 5
   printf("\n\n");
   //Substraction Assignment operator
    printf("Assignment value of x is : %d\n ",x );
	printf("Assignment value of y is :%d\n ",y );
   x=x-4;
   printf("New Assignmet value of x : %d\n", x);
   printf("New Assignment value of y : %d\n",y-=9);//y=5-9, -4
   printf("\n\n");
   //Multipication assignment operator
   x=0;
   	printf("Assignment value of x is : %d\n ",x );
	printf("Assignment value of y is :%d\n ",y );
   printf("New assign value of x : %d\n", x*2);
   printf("New assign value of y : %d\n",y*=(-5));printf("\n\n");
   //Division Assignment operator
   x=8;
   printf("New asssign value of x:%d\n ",x);
   printf("again new assign value of x: %d\n ", x*=2.5);
   x=8.6;
   	printf("Assignment value of x is : %d\n ",x );
   printf("again new assign value of x: %f\n ", x*=2.334);
   printf("again new assign value of x: %f\n ", x=x* 2.334);   printf("\n\n");
   //reminder assignment operator
   x=9;
   printf("new assignment value of x :%d\n", x);
   printf("Again reminder value of x/2 : %d\n", x%=2);   printf("\n\n");
   y=35;
	printf("Assignment value of y is :%d\n ",y );
   printf("Again reminder value of y/6 : %d\n", y%=6);

	return 0;
}
