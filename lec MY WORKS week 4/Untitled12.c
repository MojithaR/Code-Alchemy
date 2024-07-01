#include <stdio.h>
int main(void){
	int userRating[5],rating,i,j;
	
	for(i=0;i<5;i++){
		userRating[i]=0;
	}
	
	while(1){
		printf("Input any number of rating : ");
		scanf("%d",&rating);
		
		if(rating==-99)
			break;
			
		if(rating<=5&&rating>=1){
			if(rating==1)
				userRating[0]+=1;
			else if(rating==2)
				userRating[1]+=1;
			else if(rating==3)
				userRating[2]+=1;
			else if(rating==4)
				userRating[3]+=1;
			else if(rating==5)
				userRating[4]+=1;
		}
		else{
			printf("Enter valid rating\n");
			continue;
		}
	}
	for(i=0;i<5;i++){
		printf("%d\t",i+1);
		for(j=0;j<userRating[i];j++){
			printf("*");
		}
		puts("");	
	}
	
	
	return 0;
}
