//exercise 3
#include<stdio.h>
//function main begins program execution
int main()
{
	char operator;
	float number1, number2, total;
	
	printf("Enter the operator( + , - , * , / ) : ");
	scanf("%c", &operator);
	
	printf("Enter the number 1 : ");
	scanf("%f" &number1 );
	
	printf("Enter the number 2 : ");
	scanf("%f" &number2 );
	
	if(operator=='+')
	{
		total = number1 + number2;
	}
	else if(operator=='-')
	{
		total = number1 - number2;
	}
	else if(operator=='*')
	{
		total = number1 * number2;
	}
	else if(operator=='/')
	{
		total = number1 / number2;
	}
	else
	{
		printf("invalid Operator ");
	}
	return 0;
}


#include<stdio.h>
int main(void)
{
    double no1, no2;
    char opr;
    
    printf("Enter operator (+,-,*,/) : ");
    scanf("%c", &opr);
    
    printf("Enter no 1 : ");
    scanf("%lf", &no1);
    
    printf("Enter no 2 : ");
    scanf("%lf", &no2);
    
    if (opr=='+')
    {
        printf("Answer : %.2f", no1+no2);
    }
    else if (opr=='-')
    {
        printf("Answer : %.2f", no1-no2);
    }
    else if (opr=='*')
    {
        printf("Answer : %.2f", no1*no2);
    }
    else if (opr=='/')
    {
        printf("Answer : %.2f", no1/no2);
    }
    else
    {
        printf("Invalid operator");
    }
    return 0;
}
444444444444444444444444444444444444444444444444444
#include <stdio.h>
int main(void)
{
    char op;
    int n1, n2;
    
    printf("%s","Enter two integers :\n");
    scanf("%d %d", &n1, &n2);
    getchar();
    printf("%s","Enter the operation :");
    scanf("%c", &op);
        
    switch (op)
    {
        case '+' :  printf("%d + %d = %d", n1, n2, (n1 + n2));
                    break;
        case '-' :  printf("%d - %d = %d", n1, n2, (n1 - n2));
                    break;
        case '*' :  printf("%d * %d = %d",  n1, n2, (n1 * n2));
                    break;
        case '/' :  printf("%.2f / %.2f = %.2f", (float)n1, (float)n2, ((float)n1 / n2));
                    break;    
        default  :  printf("Invalid operation");    
                    break;
    }
    return 0;
}

[4:30 PM] IT22601810 - PERERA LWDK (Guest)


#include <stdio.h> int main() {?????

    double number1, number2, answer, answer1, answer2, answer3;

    char operators;

    printf("Enter number 1: ");

    scanf("%lf", &number1);

    printf("Enter number 2: ");

    scanf("%lf", &number2);

    printf("Enter operators (+, -, *, /): ");

    operators = getchar();

    scanf("%c", &operators);

    switch(operators){?????

        case '+' : answer = number1 + number2;

        printf("%.3f", answer);

        break;

        case '-' : answer = number1 - number2;

        printf("%.3f", answer);

        break;

        case '*' : answer = number1 * number2;

        printf("%.3f", answer);

        break;

        case '/' : answer = number1 / number2;

        printf("%.3f", answer);

        break;

        default :  printf("Invalid operator");

    }????? 

    return 0;

}?????



