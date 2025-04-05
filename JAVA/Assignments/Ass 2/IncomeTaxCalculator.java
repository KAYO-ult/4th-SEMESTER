import java.util.Scanner;

public class IncomeTaxCalculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter your earnings: ");
        double income = sc.nextDouble();
        double tax = 0;

        if (income > 150000) {
            tax += (income - 150000) * 0.30;
            income = 150000;
        }
        if (income > 100000) {
            tax += (income - 100000) * 0.20;
            income = 100000;
        }
        if (income > 50000) {
            tax += (income - 50000) * 0.10;
        }

        System.out.println("Income tax to be paid: " + tax);
        sc.close();
    }
}


