import java.util.Arrays;

public class SumPair {
    public static boolean findSumPair(int[] S, int x) {
        // Sort the set S in ascending order
        Arrays.sort(S);

        // Initialize the two pointers
        int left = 0;
        int right = S.length - 1;

        // Use the two-pointer approach
        while (left < right) {
            int sum = S[left] + S[right];
            if (sum == x) {
                return true; // Two elements with sum x found
            } else if (sum < x) {
                left++; // Increase the sum by moving the left pointer
            } else {
                right--; // Decrease the sum by moving the right pointer
            }
        }

        return false; // No pair of elements with sum x found
    }

    public static void main(String[] args) {
        int[] S = {1, 2, 3, 4, 5};
        int x = 7;
        System.out.println(findSumPair(S, x)); // Output: true
    }
}