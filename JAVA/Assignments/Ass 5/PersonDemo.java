import java.util.Scanner;

// Base class
class Person {
    protected String name;
    protected int age;
    protected double salary;

    // Constructor
    public Person(String name, int age, double salary) {
        this.name = name;
        this.age = age;
        this.salary = salary;
    }

    // Method to display person details
    public void display() {
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Salary: " + salary);
    }
}

// Politician class inheriting Person
class Politician extends Person {
    private double bonus;

    // Constructor
    public Politician(String name, int age, double salary, double bonus) {
        super(name, age, salary);
        this.bonus = bonus;
    }

    // Method to calculate salary
    public double calculateSalary() {
        return salary + bonus; // Politician gets a bonus
    }

    // Overriding display method
    @Override
    public void display() {
        super.display();
        System.out.println("Total Salary (with bonus): " + calculateSalary());
        System.out.println("Occupation: Politician\n");
    }
}

// Sportsman class inheriting Person
class Sportsman extends Person {
    private double endorsements;

    // Constructor
    public Sportsman(String name, int age, double salary, double endorsements) {
        super(name, age, salary);
        this.endorsements = endorsements;
    }

    // Method to calculate salary
    public double calculateSalary() {
        return salary + endorsements; // Sportsman earns through endorsements
    }

    // Overriding display method
    @Override
    public void display() {
        super.display();
        System.out.println("Total Salary (with endorsements): " + calculateSalary());
        System.out.println("Occupation: Sportsman\n");
    }
}

// Main class to test the program
public class PersonDemo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input for Politician
        System.out.print("Enter Politician's Name: ");
        String pName = scanner.nextLine();
        System.out.print("Enter Politician's Age: ");
        int pAge = scanner.nextInt();
        System.out.print("Enter Politician's Base Salary: ");
        double pSalary = scanner.nextDouble();
        System.out.print("Enter Politician's Bonus: ");
        double pBonus = scanner.nextDouble();
        scanner.nextLine(); // Consume newline

        Politician politician = new Politician(pName, pAge, pSalary, pBonus);

        // Input for Sportsman
        System.out.print("Enter Sportsman's Name: ");
        String sName = scanner.nextLine();
        System.out.print("Enter Sportsman's Age: ");
        int sAge = scanner.nextInt();
        System.out.print("Enter Sportsman's Base Salary: ");
        double sSalary = scanner.nextDouble();
        System.out.print("Enter Sportsman's Endorsements Income: ");
        double sEndorsements = scanner.nextDouble();

        Sportsman sportsman = new Sportsman(sName, sAge, sSalary, sEndorsements);

        System.out.println("\n--- Politician Details ---");
        politician.display();

        System.out.println("--- Sportsman Details ---");
        sportsman.display();

        scanner.close();
    }
}
