/*Using Conersion specifiers in a C program*/
#include<stdio.h>
//function main begins program execution

int main(void)
{
	printf("%d\n",  455 );
	printf("%d\n", -455 );
	printf("%i\n",  455 );
	printf("%i\n", -455 );
	printf("%f\n", 1234.56789);
	printf("%.2f\n", 1234.56789);
	printf("%.1f\n", 1234.56789);
	printf("%c\n", 'a');
	
	int no1 , no2 ,sum ;
	
	no1 = 25 ; //assign value to no1 variable
	no2 = 12 ; //assign value to no2 variable
	
	sum= no1 + no2 ; //add numbers
	printf( "summation is %d\n", sum );
	
	int n0o1 , n0o2 , s0um ;
    
    printf("Enter first number : "); //prompt
    scanf("%d" , &n0o1 );               //read the first value
    
    printf("Enter second number: "); //promt
    scanf("%d", &no2);               //read the second number
    
    s0um = no1 + n0o2 ;                //assign total to sum
    printf("sum is : %d\n" , s0um);     //print sum
	return 0;
	
		int empNo ;
	int age ;
	double salary ;
	char gender ;
		
}emp1 , emp2, emp3 ;//structer variables 3 employees are working

 //employye 1's details
    emp1.empNo = 12345 ;
    emp1.age   = 34    ;
    emp1.gender= 'M'     ;
    emp1.salary= 84500.90 ;
    
    //employyee 2's details
    emp2.empNo = 67891 ;
    emp2.age   = 25    ;
    emp2.gender= 'F'     ;
    emp2.salary= 89500.50 ;
    
    //employyee 3's details
    emp3.empNo = 19283 ;
    emp3.age   = 23    ;
    emp3.gender= 'F'     ;
    emp3.salary= 76500.28 ;
    
    printf(" Employee 1 Employee ID : %d\n ", emp1.empNo );
    printf(" Employee 1's Age : %d\n" , emp1.age );
    printf(" Employee 1's Gender: %c\n" , emp1.gender );
    printf(" Employee 1's salary LKR: %.2f\n" , emp1.salary );
    //scanf("%.2f", &emp1.salary);
    
    
    printf(" Employee 2 Employee ID : %d\n ", emp2.empNo );
    printf(" Employee 2's Age : %d\n" , emp2.age );
    printf(" Employee 2's Gender: %c\n" , emp2.gender );
    printf(" Employee 2's salary LKR: %.2f\n" , emp2.salary );
    //scanf("%.2f", &emp2.salary);
    
    printf(" Employee 3 Employee ID : %d\n ", emp3.empNo );
    printf(" Employee 3's Age : %d\n" , emp3.age );
    printf(" Employee 3's Gender: %c\n" , emp3.gender );
    printf(" Employee 3's salary LKR: %.2f\n" , emp3.salary );
    //scanf("%.2f", &emp3.salary);
    
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
	
		printf(" print the value : %d\n  ", 1278954);//normal intiger
	printf(" print the value : %i\n\n  ", 768534);
	
	printf(" print the value : %10d\n  ", 1278954);//intiger with 10 boxes
	printf(" print the value : %9d\n  ", 1278954);//intiger with 9 boxes
	printf(" print the value : %4d\n\n  ", 1278954);//over spill not enough boxes
	
	printf(" print the value : %-d\n  ", 1278954);//left align intiger
	printf(" print the value : %-10d\n  ", 1278954);//left align intiger with 10 boxes
	printf(" print the value : %-4d\n\n  ", 1278954);//left align intiger with over spill
	
	//float type examples
	printf(" print the value : %f\n  ", 1278.954);//normal float
	printf(" print the value : %11f\n  ", 1278.954);//float with 10 boxes
	printf(" print the value : %5f\n\n  ", 1278.954);//float with 5 boxes over spill
	
	printf(" print the value : %.5f\n  ", 1278.954);//float with 5 decimal points
	printf(" print the value : %.2f\n  ", 1278.954);//float with 2 decimal points not enoughf
	printf(" print the value : %10.5f\n\n  ", 1278.954);//float with 10 boxes and 5 decimals
	
	printf(" print the value : %-10f\n  ", 1278.954);//left align float
	printf(" print the value : %-.5f\n  ", 1278.954);//left align float with 5 decimals
	printf(" print the value : %-10.2f\n  ", 1278.954);//left align float with 2 decimals
	printf(" print the value : %-2.2f\n\n ", 1278.954);//left align float with 2 decimals and 2 boxes not enoughf
	
	//srting type examples
	
	printf(" print the value : %s\n  ", " Coding learn" );//normal type
	printf(" print the value : %15s\n  ", " Coding learn" );//string with 15 boxes
	printf(" print the value : %8s\n\n  ", " Coding learn" );//string with 8 boxes not enough over spill
	
	printf(" print the value : %.3s\n  ", "Coding learn" );//srting with no boxes only need 3
	printf(" print the value : %15.2s\n  ", "Coding learn" );//string with 15 boxes only need 2
	printf(" print the value : %2.2s\n\n  ", "Coding learn" );//string not enougf boxes only need 2 over spill
	
	printf(" print the value : %-s\n  ", " Coding learn" );//string left align
	printf(" print the value : %-15s\n  ", " Coding learn" );//srting left align with 15 boxes
	printf(" print the value : %-.3s\n  ", "Coding learn" );//string left align only need 3 characters
	printf(" print the value : %-15.10s\n  ", "Coding learn" );//string left align 15 boxes and need 10 characters
	printf(" print the value : %-4.4s\n  ", "Coding learn" );//string left align  not enough boxes need 4 charactes over spill
}//end of main function
