#include<iostream>
using namespace std;
class test
{
	private:
		int x;
	public:
		test ();
		setx();
	    display();
	    
}
//function declaration
void display()
{
	int x;
	cout<<x--<<"";
}
int main()
{
	int x;
	test obj1;
	test setx(int);
	obj1.setx(10);
	obj1.display();
	obj1.display();
	return 0;
}
