//Bitwise operators 
#include<stdio.h>
//function main begins program execution
int main(void)
{
	printf("Bitwise AND operator 7&13 : %d\n ", 7&13 );
	printf(" answer: 7 = 0111 \n");
	printf(" 13 = 1101 \n");
	printf(" total binary : According to & And gate \n");
	printf("A\t B\t F\t \n");
	printf("0\t 0\t 0\t \n");
	printf("0\t 1\t 0\t \n");
	printf("1\t 0\t 0\t \n");
	printf("1\t 1\t 1\t \n");
	printf("0111 And 1101 = 0101 in Decimal 5 \n\n");
	
	printf("Bitwise OR operator 7|13 : %d \n", 7|13);
	printf(" answer: 7 = 0111 \n");
	printf(" 13 = 1101 \n");
	printf(" total binary : According to | OR gate \n");
	printf("A\t B\t F\t \n");
	printf("0\t 0\t 0\t \n");
	printf("0\t 1\t 1\t \n");
	printf("1\t 0\t 1\t \n");
	printf("1\t 1\t 1\t \n");
	printf("0111 And 1101 = 1111 in Decimal 15 \n\n");
	
	printf("Bitwise NOT operator ~13 : %d \n", ~13);
	printf("Bitwise NOT operator is an Unary operator\n, becaouse operator (~) attach with only one operand(13)\n");
	printf("- (n+1)\n");
	printf("- (13+1)\n");
	printf("answear : -(14)\n");
	printf("Bitwise NOT operator ~27 : %d \n", ~27);
	printf("Bitwise NOT operator is an Unary operator\n, becaouse operator (~) attach with only one operand(27)\n");
	printf("- (n+1)\n");
	printf("- (27+1)\n");
	printf("answear : -(28)\n\n");
	
	
	printf("Bitwise X closive OR operator 7^13 : %d \n", 7^13);
	printf(" answer: 7 = 0111 \n");
	printf(" 13 = 1101 \n");
	printf(" total binary : According to ^ XOR gate \n");
	printf("A\t B\t F\t \n");
	printf("0\t 0\t 0\t \n");
	printf("0\t 1\t 1\t \n");
	printf("1\t 0\t 1\t \n");
	printf("1\t 1\t 0\t \n");
	printf("0111 And 1101 = 1010 in Decimal 10 \n\n");
	

	return 0;
	//end of main function
}
