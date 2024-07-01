#include<stdio.h>
int main(void)
{
	/*printf("i am learning");
	printf("   the basic concepts\n of\n  ");
	printf("programing\n  ");*/
	
	char val;
	
	printf("enter  a or A :  ",val );
	scanf( " %c" , &val );
	switch(val)
	{
		case 'a':
		case 'A': printf("congradulations ");
		     break ;
			
	}
	
	return 0 ;
}
