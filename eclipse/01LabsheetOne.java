public class StackX {
    // stack arrays size
    private int maxSize;
    // stack arrays data type
    private double[] stackArray;
    // stack arrays top values data type
    private int top;

    // constructing the StackX array
    public StackX(int s) {
        // set arrays size
        maxSize = s;
        stackArray = new double[maxSize];
        // no of items in the stack array right now
        top = -1;
        // no items yet
    }

    // push statement
    public void push(double j) {
        // check whether the stack is full
        if (top == maxSize - 1) {
            System.out.println("Stack is Full!!!");
        } else {
            stackArray[++top] = j;
        }
    
    //pop statement
    public double pop(){
        //check of the Stack array is empty
        if(top == -1){
            System.out.println("Stack is already Empty !!!")
            return -99;
        }
        else{
            return stackArray[top --];
        }
    }

    //peek statment
    public double peek(){
        //check whether the stack if empty or not
        if(top == -1){
            System.out.println("Stack is empty,Nothing to read!!!");
            return -99;
        }
        else{
            return stackArray[top];
        }
    }

    }

    public static void main(String[] args) {
        // creating a stack with maximum size 5
        StackX stack = new StackX(5);

        // push some elements to the stack
        stack.push(1.0);
        stack.push(3.5);
        stack.push(182.9);
        stack.push(95.4);
        stack.push(66.6);
        // now the stack is full when I try to enter another value to the stack array
        stack.push(17.0);
        //read the fully pushed stack array
        stack.printStack();


        //pop some values from the stack
        double popvalue1 = stack.pop();
        double popvalue2 = stack.pop();
        //read those popped values
        System.out.println("First deleted value : ", popvalue1);
        System.out.println("Secondly deleted value: " + popvalue2);
        
        //peek soem values stored on the stack array
        while(top == -1)
        {
            System.out.println("Stack array's values: ", Stack.peek())
            stackArray[top--];
        }


    }
}
