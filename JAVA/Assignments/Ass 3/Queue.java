import java.util.Scanner;

class Queue {
    private int front, rear, size;
    private int[] queueArray;

    // Constructor
    public Queue(int size) {
        this.size = size;
        queueArray = new int[size];
        front = 0;
        rear = -1;
    }

    // Enqueue (Insert element)
    public void enqueue(int value) {
        if (rear == size - 1) {
            System.out.println("Queue Overflow! Cannot insert " + value);
        } else {
            queueArray[++rear] = value;
            System.out.println(value + " added to the queue.");
        }
    }

    // Dequeue (Remove element)
    public int dequeue() {
        if (front > rear) {
            System.out.println("Queue Underflow! No elements to remove.");
            return -1;
        }
        return queueArray[front++];
    }

    // Display Queue
    public void display() {
        if (front > rear) {
            System.out.println("Queue is empty.");
        } else {
            System.out.print("Queue elements: ");
            for (int i = front; i <= rear; i++) {
                System.out.print(queueArray[i] + " ");
            }
            System.out.println();
        }
    }

    // Main method for user input and testing
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the size of the queue: ");
        int size = scanner.nextInt();
        Queue queue = new Queue(size);

        while (true) {
            System.out.println("\nQueue Operations:");
            System.out.println("1. Enqueue");
            System.out.println("2. Dequeue");
            System.out.println("3. Display");
            System.out.println("4. Exit");
            System.out.print("Enter your choice: ");
            int choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter a value to enqueue: ");
                    queue.enqueue(scanner.nextInt());
                    break;
                case 2:
                    int removedValue = queue.dequeue();
                    if (removedValue != -1) {
                        System.out.println("Dequeued: " + removedValue);
                    }
                    break;
                case 3:
                    queue.display();
                    break;
                case 4:
                    System.out.println("Exiting program.");
                    scanner.close();
                    return;
                default:
                    System.out.println("Invalid choice! Please enter a valid option.");
            }
        }
    }
}
