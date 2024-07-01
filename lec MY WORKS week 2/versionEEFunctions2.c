/*This programo convert the angle given in degrees to radians.
*/
#include<stdio.h>
//function declaration
float FindRadianValue(float angleInDegree);
void printRadianValue(void);

//function main begins program execution
int main(void)
{
	//declaring variables
	float radian , degree,resault ;

	char y ,Y ,n,N ,ans;
	
	printf("\t\t Angle(degree) \t Angle(radian)");
	printf("\n");
	printf("Enter degree : ");
	scanf("%[25]f",&degree);
	
	while((degree=='y'|| degree=='Y')&& ((degree!='n'|| degree!='N')))
	{
		printf("Enter degree : ");
		scanf("%f",&degree);
		
		printf("want continue? : ");
		scanf("%c",&ans);
	}
	
	//calllong function
	radian=FindRadianValue( degree);
	printRadianValue( );
	
	
	
	printf("degree :%.2f Radian value :%.2f",degree,radian);
	
	return 0;
	
}
float FindRadianValue(float angleInDegree)
{
	float pi =22/7;
	return pi/180*angleInDegree;
}
void printRadianValue(void)
{
	printf("printRadianValue");
	printf("\n\n");
	
}

