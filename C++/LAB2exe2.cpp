//This is for OOC labsheet 2 exercise 2 
#include<iostream>
using namespace std;

	//difining structure
	struct Rectangle{
		int length;
		int width;
	};
	

//create the function
int area(Rectangle R);

//function main begins program execution
int main(void){

	//declaring structure
	struct Rectangle R1; //for the house
	struct Rectangle R2; //for the yard
	
	//assigning values to R1 house
	cout<<"Enter length for House : "<<R1.length;
	cin>>R1.length;
	cout<<endl;
	
	cout<<"Enter Width for House : "<<R1.width;
	cin>>R1.width;
	cout<<endl;
	
	//assigning value to R2 Yard
	cout<<"Enter Width for Yard: "<<R2.length;
    cin>>R2.length;
	cout<<endl;
	
	cout<<"Enter Width for Yard: "<<R2.width;
    cin>>R2.width;
	cout<<endl;
	
	//calling function
	int AreaHouse, AreaYard;
	
	AreaHouse=area(R1);
	AreaYard=area(R2);
	
	//calculation part
	int lawn =AreaYard-AreaHouse;
	
	
	//display output
		if(lawn<=0)
	{
		cout<<"Invalid Width And length Entered!"<<endl;
	}
	else{
		
	cout<<"Area of the lawn : "<<lawn;
	cin>>lawn;
	cout<<endl;
		
	}

	return 0;
	//end of main function
	
}
//user difine function (Function declarator)
int area(Rectangle R)
{
	return R.length * R.width;
}
