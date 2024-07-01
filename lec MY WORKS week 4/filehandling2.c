#include<stdio.h>
int main(void)
{
      FILE *cfPtr;
      cfPtr=fopen("purchase.txt","w");
     
      char itemId[4];
      char name[6];
      int qty,i;
      float unitPrice,total,totalPrice;
     
      if(cfPtr == NULL)
	  {
            printf("Fail to create file\n");
            return -1;      
      }
      
      for(i=1;i<5;i++){
           
            printf("Input the Item ID:");
            scanf("%s",&itemId);
           
            printf("Input the Product Name :");
            scanf("%s",&name);
           
            printf("Input the Quantity:");
            scanf("%d",&qty);
           
            printf("Input the Unit Price:");
            scanf("%f",&unitPrice);
           
            printf("\n");
            fprintf(cfPtr,"%s %s\t\t%d\t %f \n",itemId,name,qty,unitPrice);
        }
   fclose(cfPtr);
   
   cfPtr=fopen("purchase.txt","r");
           
    printf("ItemID\t\t\tName\t\tQty\t\tUnitPrice\t\t\t Total\n");
    fscanf(cfPtr,"%s %s %d %f ",&itemId,&name,&qty,&unitPrice);
    while(!feof(cfPtr))
	{
     
        total=qty*unitPrice;
        printf("%s\t\t\t%s\t\t%d\t\t%f\t\t\t %f",itemId,name,qty,unitPrice,total);
        fscanf(cfPtr,"%s %s %d %f ",&itemId,&name,&qty,&unitPrice);
           
        totalPrice=totalPrice+total;
        printf("\n");
    }
     
    printf("Total Ammount \t \t \t \t \t %f",totalPrice);
      
    fclose(cfPtr);
	
    return 0;  
}
