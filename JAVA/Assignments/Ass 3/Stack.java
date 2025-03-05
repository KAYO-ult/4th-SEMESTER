import java.util.Scanner;

class Stack {
    private int top;
    private int[] stackArray;

    // Constructor
    public Stack(int size) {
        stackArray = new int[size];
        top = -1;
    }

    // Push method
    public void push(int value) {
        if (top == stackArray.length - 1) {
            System.out.println("Stack Overflow!");
        } else {
            stackArray[++top] = value;
            System.out.println(value + " pushed into stack.");
        }
    }

    // Pop method
    public int pop() {
        if (top == -1) {
            System.out.println("Stack Underflow!");
            return -1;
        }
        return stackArray[top--];
    }

    // Display method
    public void display() {
        if (top == -1) {
            System.out.println("Stack is empty.");
        } else {
            System.out.print("Stack: ");
            for (int i = 0; i <= top; i++) {
                System.out.print(stackArray[i] + " ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Stack stack = new Stack(5);

        while (true) {
            System.out.println("\n1. Push  2. Pop  3. Display  4. Exit");
            System.out.print("Enter choice: ");
            int choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter value to push: ");
                    stack.push(scanner.nextInt());
                    break;
                case 2:
                    System.out.println("Popped: " + stack.pop());
                    break;
                case 3:
                    stack.display();
                    break;
                case 4:
                    System.out.println("Exiting...");
                    scanner.close();
                    return;
                default:
                    System.out.println("Invalid choice!");
            }
        }
    }
}
