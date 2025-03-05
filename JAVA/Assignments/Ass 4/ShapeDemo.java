import java.util.Scanner;

// Shape interface
interface Shape {
    double getArea();
}

// Rectangle class implementing Shape
class Rectangle implements Shape {
    private double length, width;

    // Constructor
    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    // Implement getArea method
    public double getArea() {
        return length * width;
    }
}

// Circle class implementing Shape
class Circle implements Shape {
    private double radius;

    // Constructor
    public Circle(double radius) {
        this.radius = radius;
    }

    // Implement getArea method
    public double getArea() {
        return Math.PI * radius * radius;
    }
}

// Triangle class implementing Shape
class Triangle implements Shape {
    private double base, height;

    // Constructor
    public Triangle(double base, double height) {
        this.base = base;
        this.height = height;
    }

    // Implement getArea method
    public double getArea() {
        return 0.5 * base * height;
    }
}

// Main class to test the program
public class ShapeDemo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Rectangle
        System.out.print("Enter length and width of the rectangle: ");
        double length = scanner.nextDouble();
        double width = scanner.nextDouble();
        Shape rectangle = new Rectangle(length, width);
        System.out.println("Area of Rectangle: " + rectangle.getArea());

        // Circle
        System.out.print("Enter radius of the circle: ");
        double radius = scanner.nextDouble();
        Shape circle = new Circle(radius);
        System.out.println("Area of Circle: " + circle.getArea());

        // Triangle
        System.out.print("Enter base and height of the triangle: ");
        double base = scanner.nextDouble();
        double height = scanner.nextDouble();
        Shape triangle = new Triangle(base, height);
        System.out.println("Area of Triangle: " + triangle.getArea());

        scanner.close();
    }
}
