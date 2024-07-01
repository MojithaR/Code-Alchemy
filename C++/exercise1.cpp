#include<iostream>
//function main begins program execution
int main(void)
{
	std::cout<<"Hello world !"<<std::endl;
	
	std::cout<<"i am thor"<<std::endl;
	
	int number=15;
	int x=20; //declaring variables
	
	std::cout<<number<<std::endl;
	std::cout<<x<<std::endl;
	
	float y=12.9873;
	char letter =67; //asci value will be assigned here
	bool Todaysunny = true;
	
	std::cout<<y<<std::endl
	<<letter<<std::endl
	<<Todaysunny<<std::endl; //displaying user outputs
	
	int num =12;
	
	std::cout<<"Number is "<<num<<". Enter new value : ";
	
	std::cin >>num;
	
	std::cout<<"Updated number : "<<num<<std::endl;
	
	
	int i;
	
	std::cout<<"Enter number value (i) : ";
	std::cin>>i; //getting user input
	
	//display user output
	std::cout<<"Entered value : "<<i<<std::endl;
	
	
	//end of main function
	return 0;
}
