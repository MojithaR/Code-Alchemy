//This C programm is for file handling 2
#include<stdio.h>
//function main begins program execution
int main(void)
{
	//Creating afile pointer
	FILE *cfptr_1;
	
	//open file pointer to write
	cfptr_1=fopen("purchase.txt","w");
	
	//declaring variables
	char itemID[4];
	char Name[6];
	int Qty ,i;
	float Unit_price , price , Total_ammount ;
	
	//check the file
	if(cfptr_1==NULL)
	{
		printf("Failed to open File \n");
		return -1;
	}
	
	//getting user inputs
	//starting for loop
	for(i=1; i<5 ; i++)
	{
		printf("Enter Item ID : ");
		scanf("%s",&itemID);
		printf("\n");
		
		printf("Enter Name : ");
		scanf("%s",&Name);
		printf("\n");
		
		printf("Enter Quantity : ");
		scanf("%d",&Qty);
		printf("\n");
		
		printf("Enter Unit price : ");
		scanf("%f",&Unit_price);
		printf("\n");
		
		//write numbers to the file
		fprintf(cfptr_1,"%s\t %s\t %d\t %f\n",itemID ,Name ,Qty ,Unit_price );
	}
	
	//writting part is over close the file
	fclose(cfptr_1);
	
	//open file for reading
	cfptr_1=fopen("purchase.txt","r");
	
	//start reading the file
	printf("Item ID\t  Name\t Quantity\t Unit price\t  price\n");
	
	//now read details from the file
	fscanf(cfptr_1,"%s %s %d %f ", &itemID ,&Name ,&Qty ,&Unit_price );
	
	//start reading and disply file details
	//start while loop
	
	while( !feof(cfptr_1))
	{
		fscanf(cfptr_1,"%s %s %d %f ", &itemID ,&Name ,&Qty ,&Unit_price );
		
		//calculation part 
		price=Unit_price*Qty;
		printf("%s\t %s\t %d\t\t\t %f\t\t\t %f\n",itemID,Name,Qty,Unit_price,price);
		
		//calculation part
		Total_ammount+=price;
		
	}
	printf("\n");
	 
	printf("Your total ammount :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t %.2f",Total_ammount);
	
	return 0;
	//end of main function
}
