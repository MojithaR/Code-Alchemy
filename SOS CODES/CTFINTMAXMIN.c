#include <stdio.h>
#include <limits.h>

int main() {
    // Given values
    int INT_MAX_value = INT_MAX;
    int target_number = -2147482312;

    // Calculate the number to add to INT_MAX
    int number_to_add = target_number - INT_MAX_value;

    // Output the result
    printf("To get %d from INT_MAX (%d), add %d.\n", target_number, INT_MAX_value, number_to_add);

    return 0;
}

