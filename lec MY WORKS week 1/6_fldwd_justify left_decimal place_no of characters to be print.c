/* C programing justify to left, field width , no of decimal points/no of charachters to be printed */
#include<stdio.h>
//function main begins program execution
int main (void)
{   // int type examples
	printf(" print the value : %d\n  ", 1278954);//normal intiger
	printf(" print the value : %i\n\n  ", 768534);
	
	printf(" print the value : %10d\n  ", 1278954);//intiger with 10 boxes
	printf(" print the value : %9d\n  ", 1278954);//intiger with 9 boxes
	printf(" print the value : %4d\n\n  ", 1278954);//over spill not enough boxes
	
	printf(" print the value : %-d\n  ", 1278954);//left align intiger
	printf(" print the value : %-10d\n  ", 1278954);//left align intiger with 10 boxes
	printf(" print the value : %-4d\n\n  ", 1278954);//left align intiger with over spill
	
	//float type examples
	printf(" print the value : %f\n  ", 1278.954);//normal float
	printf(" print the value : %11f\n  ", 1278.954);//float with 10 boxes
	printf(" print the value : %5f\n\n  ", 1278.954);//float with 5 boxes over spill
	
	printf(" print the value : %.5f\n  ", 1278.954);//float with 5 decimal points
	printf(" print the value : %.2f\n  ", 1278.954);//float with 2 decimal points not enoughf
	printf(" print the value : %10.5f\n\n  ", 1278.954);//float with 10 boxes and 5 decimals
	
	printf(" print the value : %-10f\n  ", 1278.954);//left align float
	printf(" print the value : %-.5f\n  ", 1278.954);//left align float with 5 decimals
	printf(" print the value : %-10.2f\n  ", 1278.954);//left align float with 2 decimals
	printf(" print the value : %-2.2f\n\n ", 1278.954);//left align float with 2 decimals and 2 boxes not enoughf
	
	//srting type examples
	
	printf(" print the value : %s\n  ", " Coding learn" );//normal type
	printf(" print the value : %15s\n  ", " Coding learn" );//string with 15 boxes
	printf(" print the value : %8s\n\n  ", " Coding learn" );//string with 8 boxes not enough over spill
	
	printf(" print the value : %.3s\n  ", "Coding learn" );//srting with no boxes only need 3
	printf(" print the value : %15.2s\n  ", "Coding learn" );//string with 15 boxes only need 2
	printf(" print the value : %2.2s\n\n  ", "Coding learn" );//string not enougf boxes only need 2 over spill
	
	printf(" print the value : %-s\n  ", " Coding learn" );//string left align
	printf(" print the value : %-15s\n  ", " Coding learn" );//srting left align with 15 boxes
	printf(" print the value : %-.3s\n  ", "Coding learn" );//string left align only need 3 characters
	printf(" print the value : %-15.10s\n  ", "Coding learn" );//string left align 15 boxes and need 10 characters
	printf(" print the value : %-4.4s\n  ", "Coding learn" );//string left align  not enough boxes need 4 charactes over spill
	
	return 0 ;
	
}
