/*This program update the bank balance of a customer 
based on the transactions performed */
#include<stdio.h>
//function main begins programm execution
int main()
{   double amount, balance, newbalance ;
    char W, w, D, d, TranType ;//(w – withdrawals, d – deposits
    
    //user selecting future works
    printf("input transaction type (Withdrawal/ Deposit) : ");
    TranType = getchar();
    
    printf("Enter the amount : ");
	scanf("%lf ", &amount);
	
    
    if(TranType == 'w' || 'W' )
    {
    	printf("You have selected to withdraw money\n ");
    	printf("New balance is : %.2f" , balance - amount); 
    }
    else if(TranType == 'd'|| 'D')
    {
    	printf("You have selected to deposit money\n ");
    	printf("New balance is : %.2f" , balance + amount); 
	}
	else
	{
		printf("You have selected an invalid transaction type ");
	}
    
 
	
	return 0 ;
}

#include <stdio.h>
int main()
{
    char transactiontype;
    double amount, balance;
    printf("Transaction Type >> Withdrawal(W) or Deposit(D):");
    transactiontype = getchar();
    printf("Amount:");
    scanf("%lf", &amount);
    printf("Bank Balance:");
    scanf("%lf", &balance);
    if (transactiontype == 'w' || transactiontype == 'W'){
        printf("You have selected to withdraw money\n");
        printf("New balance is: %.2f", balance - amount);
    }else if (transactiontype == 'd' || transactiontype == 'D'){
        printf("You have selected to deposit money\n");
        printf("New balance is: %.2f", balance + amount);
    }else{
        printf("You have selected an invalid transaction type");
}
    return 0;
}




