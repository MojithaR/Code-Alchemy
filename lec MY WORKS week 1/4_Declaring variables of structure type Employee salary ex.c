//This C programm shows the C structures
#include<stdio.h>
//structure of emplooyes
struct employee
{
	int empNo ;
	int age ;
	double salary ;
	char gender ;
		
}emp1 , emp2, emp3 ;//structer variables 3 employees are working


//function main begins program execution
int main()
{   //employye 1's details
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
    
    
    
     
	return 0 ;
	
}
