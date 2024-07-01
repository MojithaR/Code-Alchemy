//This is for OOC labsheet 2 exercise 2 
#include<iostream>
using namespace std;
//function main begins program execution
int main(void){
	//difining structure
	struct square{
		int length_S;
		int wide_s;
		int Area_s;
	};
	
	//declaring structure
	struct square S1;
	struct square S2;
	
	//assigning values to S1
	cout<<"Enter Square length : "<<S1.length_S;
	cin>>S1.length_S;
	cout<<endl;
	
	//assigning value to s2
	cout<<"Enter square Width : "<<S2.wide_s;
    cin>>S2.wide_s;
	cout<<endl;
	
	//calculation part
	Area_s=length_S*wide_s;
	
	//display outputs
	cout<<"Square 1 Area : "<<S1.Area_s;
	cin>>S1.Area_s;
	cout<<endl;
	
	return 0;
	//end of main function
}
