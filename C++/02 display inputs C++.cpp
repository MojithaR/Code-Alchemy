//This C++ programm is for enter the number and display it
#include<iostream>
using namespace std;

//function main begins programm execution
int main(void)
{
	//declaring variables
	int number;
	char a;
	
	//getting user inputs
	cout<<"Enter Any number : "<<endl;
	cin>>number;
	cout<<"\n";
	
	cout<<"Enter Any letter : "<<endl;
	cin>>a;
	cout<<"\n";
	
	//display user inputs
	cout<<"Your Entered Number is : \t"<<number<<"and entered letter : "<<a<<endl;
	
	//end of main function
	return 0;
}
