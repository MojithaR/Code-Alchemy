/*input the first character of the shape (R – Rectangle, Triangle – T, Circle – C) and calculate the 
area*/
#include<stdio.h>
//function main begins program execution
int main()
{
	char shape ;
	float width, length, base, height, radius, area ;
	
	printf("Enter the first character of the shape (R, T, C) : ");
	scanf("%c", &shape);
	
	if(shape== 'R') //single code bcoz this is not a variable
	
	{ //Rectangle implimentation
		printf("Enter width : ");
		scanf("%f", &width);
		
		printf("Enter length : ");
		scanf("%f", &length);
		
		area = width * length;
		
		printf("Area of Rectangle : %.2f" , area );
	}
	elseif (shape == 'T');
	{//Triangle implimentation
		printf("Enter base : ");
		scanf("%f", &base );
		
		printf("Enter height : ");
		scanf("%f", &height );
		
		area = (base * height ) / 2 ;
		
		printf("Area of Triangle : %.2f" , area );
		
	} 
	elseif (shape == 'C');
	{//Circle implimentation
		printf("Enter radius : ");
		scanf("%f", &radius );
		
    	area = (22.0/7.0) * radius * radius  ;
		
		printf("Area of Circle : %.2f" , area );
		
	}
	else
	{
		printf("invalid character !");
	}
	
	return 0;
}
