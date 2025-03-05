import java.util.Scanner;

class Box {
    private double length, breadth, height;

    // Parameterized Constructor
    public Box(double length, double breadth, double height) {
        this.length = length;
        this.breadth = breadth;
        this.height = height;
    }

    // Constructor with Box object as parameter
    public Box(Box obj) {
        this.length = obj.length;
        this.breadth = obj.breadth;
        this.height = obj.height;
    }

    // Method to calculate volume
    public double volume() {
        return length * breadth * height;
    }
}

public class BoxDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Taking user input
        System.out.print("Enter length, breadth, and height of the box: ");
        double length = sc.nextDouble();
        double breadth = sc.nextDouble();
        double height = sc.nextDouble();

        Box box1 = new Box(length, breadth, height); // Creating first box
        Box box2 = new Box(box1);                    // Creating second box using first box

        // Displaying volumes
        System.out.println("Volume of Box 1: " + box1.volume());
        System.out.println("Volume of Box 2: " + box2.volume());

        sc.close();
    }
}
