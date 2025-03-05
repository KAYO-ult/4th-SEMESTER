import java.util.Scanner;

public class Date {
    private int day;
    private int month;
    private int year;

    // Days in each month (non-leap year)
    private static final int[] daysInMonth = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

    // Constructor
    public Date(int day, int month, int year) {
        if (isValidDate(day, month, year)) {
            this.day = day;
            this.month = month;
            this.year = year;
        } else {
            throw new IllegalArgumentException("Invalid date values.");
        }
    }

    // Method to check if a year is a leap year
    private boolean isLeapYear(int year) {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }

    // Method to validate date
    private boolean isValidDate(int day, int month, int year) {
        if (month < 1 || month > 12) return false;

        int maxDays = daysInMonth[month - 1];
        if (month == 2 && isLeapYear(year)) {
            maxDays = 29;
        }

        return day > 0 && day <= maxDays;
    }

    // Method to get the next day
    public Date getNextDay() {
        int nextDay = day + 1;
        int nextMonth = month;
        int nextYear = year;

        int maxDays = daysInMonth[month - 1];
        if (month == 2 && isLeapYear(year)) {
            maxDays = 29;
        }

        if (nextDay > maxDays) {
            nextDay = 1;
            nextMonth++;
            if (nextMonth > 12) {
                nextMonth = 1;
                nextYear++;
            }
        }

        return new Date(nextDay, nextMonth, nextYear);
    }

    // Method to display the date
    public void displayDate() {
        System.out.printf("Date: %02d/%02d/%04d\n", day, month, year);
    }

    // Main method for user input and testing
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        try {
            System.out.print("Enter day: ");
            int day = scanner.nextInt();

            System.out.print("Enter month: ");
            int month = scanner.nextInt();

            System.out.print("Enter year: ");
            int year = scanner.nextInt();

            Date date = new Date(day, month, year);
            date.displayDate();

            Date nextDate = date.getNextDay();
            System.out.print("Next day: ");
            nextDate.displayDate();

        } catch (Exception e) {
            System.out.println("Invalid input. Please enter valid numeric values.");
        } finally {
            scanner.close();
        }
    }
}
