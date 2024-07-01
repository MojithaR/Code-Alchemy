#include <stdio.h>
#include <math.h>

// Function to perform modular exponentiation (a^b mod m)
long long mod_pow(long long base, long long exp, long long mod) {
    long long result = 1;
    base = base % mod;
    
    while (exp > 0) {
        if (exp % 2 == 1) {
            result = (result * base) % mod;
        }
        exp = exp >> 1; // equivalent to exp /= 2
        base = (base * base) % mod;
    }

    return result;
}

// Function to perform Diffie-Hellman key exchange and decode the message
long long diffie_hellman_decode(long long P, long long g, long long A, long long B) {
    // Calculate shared secret keys
    long long secret_key_A = mod_pow(B, A, P);
    long long secret_key_B = mod_pow(A, B, P);

    // The shared secret key should be the same for both A and B
    if (secret_key_A == secret_key_B) {
        return secret_key_A;
    } else {
        return -1; // Indicates an error in the key exchange
    }
}

int main() {
    long long P, g, A, B;

    // Input values
    printf("Enter the value of P: ");
    scanf("%lld", &P);
    printf("Enter the value of g: ");
    scanf("%lld", &g);
    printf("Enter the value of A: ");
    scanf("%lld", &A);
    printf("Enter the value of B: ");
    scanf("%lld", &B);

    // Perform Diffie-Hellman key exchange and decode the message
    long long decoded_value = diffie_hellman_decode(P, g, A, B);

    if (decoded_value != -1) {
        printf("Decoded value: %lld\n", decoded_value);
    } else {
        printf("Error in Diffie-Hellman key exchange.\n");
    }

    return 0;
}

