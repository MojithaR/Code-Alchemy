//This code is for fork function
#include<stdio.h>
#include<string.h>
#include<stdlib.h>

//function main begins programm execution
int main(){
	
	//declaring variable
	int value;
	
	//assign fork function to the ID variable
	value=fork();
	
	//display outputs
	printf("Hello this is the sample text 1\n");
	// satrt fork function 
	fork();
	printf("This is sample text 2\n");
	
	return 0;
	//end of main function
}