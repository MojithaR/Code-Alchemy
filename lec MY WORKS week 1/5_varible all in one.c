/* C programing Variables int,float,double,char and string*/
#include <stdio.h>
//function main begins program exeaution
int main (void)
{
	int  NO1;//Whole number only shows in this variable
	NO1 = 100;
	
	float No1;//number with fractional part
	No1 =100.0;
	
	double no1 ;//number with only 2 fractional parts
	no1 =100.1234;
	
	char _No1 = '$';//single character variable
	char _NO1 = 'Y';//single charachter variable
	
	char _no1[50] = "Good moring Sigmaz !!!";
	char n_o1[50] = " would you like to pay yen Y or dollars $ ?";
	//end of declaring variables
	
	/*printf(" Display NO1 : %d \n" , NO1 );//int
	printf(" Display No1 : %f \n" , No1 );//float
	printf(" Display no1 : %.2f \n\n\n" , no1 );//double
	
	printf(" Display no1 : %c \n" , _No1 );//char 1
	printf(" Display _NO1 : %c \n" , _NO1 );//char 2
	
	printf(" Display _no1 : %s \n" , _NO1 );//string*/ 

	printf(" Display the amount : %.2f %c \n" , no1 ,  _No1 );
	printf(" Display the amount : %.2f %c \n\n" , no1 ,  _NO1 );
	printf(" %s \n ", n_o1 );
	
	
	
	
	return 0;
}//end of main function
