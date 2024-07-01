/*This program input values  for three angles and display whether a triangle can be formed or not using given 
angle values*/
#include<stdio.h>
//function main begins programm execution
int main()
{
	int angle1 , angle2 , angle3 , totalAngle ;
	
	printf("Enter angle1 :  ");
	scanf(" %d" , &angle1 );
	
	printf("Enter angle2 :  ");
	scanf(" %d", &angle2 );
	
	printf("Enter angle3 :  ");
	scanf(" %d", &angle3 );
	
	totalAngle = angle1 + angle2 + angle3;
	
	if(totalAngle ==180)
	{
		printf("Triangle can be formed");
		
	}
	else
	{
		printf("Triangle can not be formed");
	}
	
	return 0;
	
}
