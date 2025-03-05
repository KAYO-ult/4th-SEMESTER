import java.util.Scanner;

// Base class
class Person {
    protected String name;
    protected int age;

    // Parameterized constructor
    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public void display() {
        System.out.println("Name: " + name + ", Age: " + age);
    }
}

// Intermediate class inheriting Person
class Employee extends Person {
    protected double salary;

    // Parameterized constructor
    public Employee(String name, int age, double salary) {
        super(name, age); // Calling Person constructor
        this.salary = salary;
    }

    public void display() {
        super.display();
        System.out.println("Salary: " + salary);
    }
}

// Derived class inheriting Employee
class Manager extends Employee {
    private String department;

    // Parameterized constructor
    public Manager(String name, int age, double salary, String department) {
        super(name, age, salary); // Calling Employee constructor
        this.department = department;
    }

    public void display() {
        super.display();
        System.out.println("Department: " + department);
    }
}

// Main class
public class MultiLevelInheritanceDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Taking user input
        System.out.print("Enter Manager's Name: ");
        String name = sc.nextLine();
        System.out.print("Enter Age: ");
        int age = sc.nextInt();
        System.out.print("Enter Salary: ");
        double salary = sc.nextDouble();
        sc.nextLine(); // Consume newline
        System.out.print("Enter Department: ");
        String department = sc.nextLine();

        // Creating Manager object
        Manager manager = new Manager(name, age, salary, department);
        
        // Displaying details
        System.out.println("\n--- Manager Details ---");
        manager.display();

        sc.close();
    }
}
