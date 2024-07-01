/*This program will calculate the workers incriment salary and
total salary after getting incrimrent*/
#include<stdio.h>
//function declaration
float calcIncriment(float salary, int noofYearsWorked);
float calcTotsalary(float salary , float incriment);

//function main begins program execution
int main(void)
{
	//Declaring variables
	float sal , incri_sal , Toatal ;
	int years ;
	
	//gettting user inputs
	printf("Enter salary : ");
	scanf("%f", &sal);
	printf("\n");
	
	printf("Enter Number of Years : ");
	scanf("%d", &years);
	printf("\n");

	
	//calling function
	incri_sal=calcIncriment(sal, years);
	
	Toatal=calcTotsalary(sal , incri_sal);
	
	//display outputs
	printf("Incriment : %.2f " ,incri_sal);
	printf("\n");
	printf("Total salary : %.2f " ,Toatal);
	printf("\n");
	
	return 0 ;
	//end of main function
}

	//function declarator (user difine function)
	float calcIncriment(float salary, int noofYearsWorked)
	
	//start declaring function one
	{
		//cheching user inputs
	    //staring if else loop
	    if(noofYearsWorked==1)
	    {
		    return 0 ; 
	    }
	    else if(noofYearsWorked>=2)
	    {
		    return salary*10.0/100; 
		    
	    }
	    else
	    {
		    printf("Invalid Enter Number of Years!");
		    printf("\n");
	    }  
		
	}
	//end of declaring function one
	
		//function declarator (user difine function)
	float calcTotsalary(float salary , float incriment)
	//start declaring function two
	{
		
		return salary+incriment;
	}
	//end of declaring function two

