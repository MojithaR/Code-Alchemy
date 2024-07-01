/*input two numbers from keyboard and add those two numbers*/
#include<stdio.h>
//function main begins program execution
int main(void)
{ 
    int no1 , no2 , sum ;
    
    printf("Enter first number : "); //prompt
    scanf("%d" , &no1 );               //read the first value
    
    printf("Enter second number: "); //promt
    scanf("%d", &no2);               //read the second number
    
    sum = no1 + no2 ;                //assign total to sum
    printf("sum is : %d\n" , sum);     //print sum
    
	return 0;
	
}//end of main function
