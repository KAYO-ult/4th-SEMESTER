import java.util.Scanner;

// Shape class
class Shape {
    // Method to be overridden
    public double getArea() {
        System.out.println("Area calculation is not defined for a generic shape.");
        return 0;
    }
}

// Rectangle class inheriting Shape
class Rectangle extends Shape {
    private double length, width;

    // Constructor to initialize length and width
    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    // Overriding the getArea method
    @Override
    public double getArea() {
        return length * width;
    }
}

// Main class to test the program
public class ShapeDemo1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Taking user input for rectangle dimensions
        System.out.print("Enter the length of the rectangle: ");
        double length = scanner.nextDouble();

        System.out.print("Enter the width of the rectangle: ");
        double width = scanner.nextDouble();

        // Creating a Rectangle object
        Rectangle rectangle = new Rectangle(length, width);
        
        // Displaying the calculated area
        System.out.println("Area of the Rectangle: " + rectangle.getArea());

        scanner.close();
    }
}
