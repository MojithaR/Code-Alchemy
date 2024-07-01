#include <stdio.h>
#include <string.h>

void decrypt(char cipher[], int key) {
    int length = strlen(cipher);
    
    for (int i = 0; i < length; i++) {
        if (cipher[i] >= 'A' && cipher[i] <= 'Z') {
            cipher[i] = ((cipher[i] - 'A' - key + 26) % 26) + 'A';
        } else if (cipher[i] >= 'a' && cipher[i] <= 'z') {
            cipher[i] = ((cipher[i] - 'a' - key + 26) % 26) + 'a';
        }
    }
}

int main() {
    char name[100];

    // Get input from the user
    printf("Enter the Cipher text (name): ");
    fgets(name, sizeof(name), stdin);

    // Remove the newline character from the input
    name[strcspn(name, "\n")] = '\0';

    // Decrypt the input using Caesar cipher with key 7
    decrypt(name, 7);

    // Display the decrypted text
    printf("Decrypted text: %s\n", name);

    return 0;
}

