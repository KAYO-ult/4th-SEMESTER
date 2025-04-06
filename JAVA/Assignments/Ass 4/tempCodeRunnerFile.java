import java.util.Scanner;

// Employee class
class Employee {
    protected double salary; // Making salary protected for subclass access

    // Constructor
    public Employee(double salary) {
        this.salary = salary;
    }

    // Work method
    public void work() {
        System.out.println("Employee is working...");
    }

    // Method to get salary
    public double getSalary() {
        return salary;
    }
}

// HRManager class inheriting Employee
class HRManager extends Employee {
    // Constructor
    public HRManager(double salary) {
        super(salary);
    }

    // Overriding work method
    @Override
    public void work() {
        System.out.println("HR Manager is managing employees...");
    }

    // New method specific to HRManager
    public void addEmployee() {
        System.out.println("HR Manager is adding a new employee.");
    }
}

// Main class to test the program
public class EmployeeDemo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Taking user input for Employee salary
        System.out.print("Enter Employee salary: ");
        double empSalary = scanner.nextDouble();
        Employee emp = new Employee(empSalary);
        emp.work();
        System.out.println("Employee Salary: " + emp.getSalary());

        System.out.println();

        // Taking user input for HR Manager salary
        System.out.print("Enter HR Manager salary: ");
        double hrSalary = scanner.nextDouble();
        HRManager hr = new HRManager(hrSalary);
        hr.work(); // Overridden method
        System.out.println("HR Manager Salary: " + hr.getSalary());
        hr.addEmployee(); // HR-specific method

        scanner.close();
    }
}
