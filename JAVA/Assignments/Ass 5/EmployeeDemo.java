import java.util.Scanner;

// Abstract class Employee
abstract class Employee {
    protected String name;
    protected int age;
    protected double basicSalary;

    // Constructor
    public Employee(String name, int age, double basicSalary) {
        this.name = name;
        this.age = age;
        this.basicSalary = basicSalary;
    }

    // Abstract method to calculate net salary
    public abstract double calculateNetSalary();

    // Abstract method to display details
    public abstract void display();
}

// Manager class inheriting Employee
class Manager extends Employee {
    private double bonus;

    // Constructor
    public Manager(String name, int age, double basicSalary, double bonus) {
        super(name, age, basicSalary);
        this.bonus = bonus;
    }

    // Implementing abstract method to calculate net salary
    @Override
    public double calculateNetSalary() {
        return basicSalary + bonus; // Manager's net salary includes a bonus
    }

    // Overriding display method
    @Override
    public void display() {
        System.out.println("\n--- Manager Details ---");
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Basic Salary: " + basicSalary);
        System.out.println("Bonus: " + bonus);
        System.out.println("Net Salary: " + calculateNetSalary());
    }
}

// Clerk class inheriting Employee
class Clerk extends Employee {
    private double deductions;

    // Constructor
    public Clerk(String name, int age, double basicSalary, double deductions) {
        super(name, age, basicSalary);
        this.deductions = deductions;
    }

    // Implementing abstract method to calculate net salary
    @Override
    public double calculateNetSalary() {
        return basicSalary - deductions; // Clerk's net salary after deductions
    }

    // Overriding display method
    @Override
    public void display() {
        System.out.println("\n--- Clerk Details ---");
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Basic Salary: " + basicSalary);
        System.out.println("Deductions: " + deductions);
        System.out.println("Net Salary: " + calculateNetSalary());
    }
}

// Main class to test the program
public class EmployeeDemo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input for Manager
        System.out.print("Enter Manager's Name: ");
        String mName = scanner.nextLine();
        System.out.print("Enter Manager's Age: ");
        int mAge = scanner.nextInt();
        System.out.print("Enter Manager's Basic Salary: ");
        double mSalary = scanner.nextDouble();
        System.out.print("Enter Manager's Bonus: ");
        double mBonus = scanner.nextDouble();
        scanner.nextLine(); // Consume newline

        Manager manager = new Manager(mName, mAge, mSalary, mBonus);

        // Input for Clerk
        System.out.print("\nEnter Clerk's Name: ");
        String cName = scanner.nextLine();
        System.out.print("Enter Clerk's Age: ");
        int cAge = scanner.nextInt();
        System.out.print("Enter Clerk's Basic Salary: ");
        double cSalary = scanner.nextDouble();
        System.out.print("Enter Clerk's Deductions: ");
        double cDeductions = scanner.nextDouble();

        Clerk clerk = new Clerk(cName, cAge, cSalary, cDeductions);

        // Display details
        manager.display();
        clerk.display();

        scanner.close();
    }
}
