#include<iostream>
#include<iomanip>
using namespace std;

//creating structures for circle
struct circle
{
	float radius;
};
//creating structures for square
struct square
{
	float length;
};
//creating structures for rectangle
struct rectangle
{
	float length,width;
};

//declaration of functions
float Area_circle(circle r);
float Area_square(square s);
float Area_ractangle(rectangle r);
//declaration of perimeter function
float Perimeter_ravtangle(rectangle r);

//declaration of  function for find fench Cost
float Find_Fench_Cost(float unitcost, float Perimeter_ravtangle);

//function main begins program execution
int main(void)
{
	//declare structure varibles
	struct circle c1;
	struct square s1;
	struct rectangle r1; //yard details
	struct rectangle r2; //small biulding details
	float GreenColorArea,areaofcircle,areaofYard,areaofrectangle,areaofsquare,fencelenght;
	float unitcost1,fench_Cost,Perimeter_ravtangle1;
	
	//get values for yard
	cout<<"Enter yard length : ";
	cin>>r2.length;
	cout<<"Enter yard width : ";
	cin>>r2.width;
	//get values for circle
	cout<<"Enter circle radius : ";
	cin>>c1.radius;
	//get values for square
	cout<<"Enter square length : ";
	cin>>s1.length;
	//get values for rectangle
	cout<<"Enter rectangle length : ";
	cin>>r1.length;
	cout<<"Enter rectangle width : ";
	cin>>r1.width;
	
	//calling function
	areaofcircle=Area_circle(c1);
	areaofYard=Area_ractangle(r2);
	areaofrectangle=Area_ractangle(r1);
	areaofsquare=Area_square(s1);
	//calling the perimeter function
    fencelenght=Perimeter_ravtangle(r2);
    //calling fench cost function
    fench_Cost = Find_Fench_Cost(unitcost1, Perimeter_ravtangle1);
	//calculate lawn area
	GreenColorArea=areaofYard-(areaofcircle + areaofrectangle + areaofsquare);
	
	cout<<"Area of Green Color : "<<GreenColorArea<<endl;
	//fence length calculate
	cout<<"Fence Length : "<<fencelenght<<endl;
	
	//fence cost calculation part
	cout<<"Enter the cost per meter (rs): "<<unitcost1;
	cin>>unitcost1;
	
	cout<<"Fence total cost (rs) : "<<Find_Fench_Cost<<endl;
	
	
}

//find Area using functions
//function declaration(user define function)
float Area_circle(circle r)
{
	return (22.0/7.0)*r.radius* r.radius;
}


float Area_square(square s)
{
	return s.length*s.length;
	
}

float Area_ractangle(rectangle r)
{
	return r.length*r.width;
}
float Perimeter_ravtangle(rectangle r)
{
	return 2.0*(r.length+r.width);
	
}
float Find_Fench_Cost(float unitcost,float Perimeter_ravtangle)
{
	return unitcost*Perimeter_ravtangle;
}
