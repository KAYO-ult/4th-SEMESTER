class Employee {
    private double salary;
    private double tax;
    private String grade;

    Employee(double salary, double tax, String grade) {
        this.salary = salary;
        this.tax = tax;
        this.grade = grade;
    }

    public double getNetSalary() {
        return salary - tax;
    }

    public String getGrade() {
        return grade;
    }

    public static void main(String[] args) {
        Employee emp = new Employee(50000, 5000, "A");
        System.out.println("Net Salary: " + emp.getNetSalary());
        System.out.println("Employee Grade: " + emp.getGrade());
    }
}