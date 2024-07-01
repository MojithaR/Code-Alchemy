#include<iostream>
//function main begins program execution
int main(void)
{
	//declaring variables
	bool is_sunny;
	
	//getting user inputs
	std::cout<<"True = 1"<<std::endl;
	std::cout<<"False =0 "<<std::endl;
	
	std::cout<<"Is today Sunny? : "<<is_sunny;
	std::cin>>is_sunny;
	
	//checking user inputs
	if(is_sunny==1)
	{
		std::cout<<"Wear a cap"<<std::endl;
	}
	else if(is_sunny==0)
	{
		std::cout<<"Take the Umbrella "<<std::endl;
	}
	/*else if(is_sunny!=0 || is_sunny!=1)
	{
		std::cout<<"Invalid response !"<<std::endl;
	}*/
	
	//declaring variables
	int x;
	
	//getting user inputs
	std::cout<<"Enter the number : "<<x;
	std::cin>>x;
	
	//checking user inputs
	//starting if else loop
	if(x<0)
	{
		std::cout<<x<<" is negative number !"<<std::endl;
	}
	else if(x==0)
	{
		std::cout<<x<<" is Equal to zero !"<<std::endl;
	}
	else
	{
		std::cout<<x<<" is Positive number !"<<std::endl;
	}
	
	return 0;
	//end of main function
}
