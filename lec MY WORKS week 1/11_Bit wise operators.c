//relational operators in C programming
#include<stdio.h>
//function main begins program execution
int main(void)
{
	printf(" Bit wise And 7 & 13 = %d\n " , 7 & 13); // 7= 0000 0111 13= 0000 1101
	printf(" Bit wise OR  7 | 13 = %d\n" , 7 | 13);
	printf(" Bit wise NOT  ~ 13 = %d\n " ,  ~13); // - ( n + 1) = - (13 + 1 )
	printf(" Bit wise XOR 7 ^ 13 = %d\n\n " , 7 ^ 13);
	printf(" Bit wise Shifting\n  ");
	printf(" Bit wise Right shifting 13 >> 2 = %d\n " , 13>> 2); /* 13 = 0000 1101 shift R >> 2 places
	                                                        0000 0011 = 2*/
	printf(" Bit wise Left shifting 13 << 5 = %d \n ", 13 << 5); /*13 = 0000 1101 shift L >> 5  places
	                                                              1010 0000 =  */                                                         
 

	return 0;
	
}//end of main function
