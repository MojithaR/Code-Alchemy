#include <iostream>
#include <algorithm>
using namespace std;

class StackX {
private:
    int maxSize; // size of stack array
    double* stackArray;
    int top; //top of the stack

public:
    StackX(int s) { // constructor
        maxSize = s; // set array size
        stackArray = new double[maxSize];
        top = -1; // no items
    }

    void push(double j) {
        // check whether stack is full
        if (top == maxSize - 1)
            cout << "Stack is full" << endl;
        else
            stackArray[++top] = j;
    }

    double pop() {
        // check whether stack is empty
        if (top == -1) {
            cout << "Stack is empty" << endl;
            return -1;
        }
        else
            return stackArray[top--];
    }

    double peek() {
        // check whether stack is empty
        if (top == -1) {
            cout << "Stack is empty" << endl;
            return -1;
        }
        else
            return stackArray[top];
    }

    bool contains(double value) {
        for (int i = 0; i <= top; i++) {
            if (stackArray[i] == value)
                return true;
        }
        return false;
    }
};

bool findSumPair(int* S, int n, int x) {
    StackX stack(n);

    // Push all elements of S onto the stack
    for (int i = 0; i < n; i++) {
        stack.push(S[i]);
    }

    // Iterate through S and check for the complement
    for (int i = 0; i < n; i++) {
        double complement = x - S[i];
        if (stack.contains(complement)) {
            return true;
        }

        // Push the elements back onto the stack
        while (stack.top() != -1 && stack.peek() != complement) {
            stack.push(stack.pop());
        }
    }

    return false;
}

int main() {
    int S[] = {1, 2, 3, 4, 5};
    int n = sizeof(S) / sizeof(S[0]);
    int x = 7;

    if (findSumPair(S, n, x))
        cout << "Pair found" << endl;
    else
        cout << "Pair not found" << endl;

    return 0;
}
