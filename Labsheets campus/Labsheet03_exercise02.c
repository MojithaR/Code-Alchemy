//this program will calculate the area of any given cylinder
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//declaring variables
	float r,h, areaofrectngle, areaofcircle,area;
	
	//getting inputs
	printf("Enter the radious value r : ");
	scanf("%f", &r);
	printf("\n");
	
	printf("Enter the height (h) : ");
	scanf("%f", &h);
	printf("\n");
	
	//calculations
	areaofrectngle  = 2 * 22 / 7 * r * h ;
	areaofcircle = (22/7) * r * r ;
	area = areaofrectngle + 2* areaofcircle ; 
	
	//displaying resault
	printf("Area of the rectangle  : %lf\n", areaofrectngle );
	printf("Area of the circle  : %lf\n", areaofcircle );
	printf("Area of the cylinder : %lf\n", area );
	

	return 0;
	//end of main function
}

