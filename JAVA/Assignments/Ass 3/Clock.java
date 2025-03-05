import java.util.*;

public class Clock {
    private int hours;
    private int minutes;
    private int seconds;
    private boolean isAM; // true for AM, false for PM

    // Constructor
    public Clock(int hours, int minutes, int seconds) {
        if (isValidTime(hours, minutes, seconds)) {
            this.hours = hours;
            this.minutes = minutes;
            this.seconds = seconds;
            this.isAM = hours < 12; // Default mode determination
        } else {
            throw new IllegalArgumentException("Invalid time values.");
        }
    }

    // Method to validate time values
    private boolean isValidTime(int hours, int minutes, int seconds) {
        return (hours >= 0 && hours < 24) && (minutes >= 0 && minutes < 60) && (seconds >= 0 && seconds < 60);
    }

    // Method to set AM/PM mode
    public void setToAMPMMode() {
        if (hours == 0) {
            hours = 12;
            isAM = true;
        } else if (hours == 12) {
            isAM = false;
        } else if (hours > 12) {
            hours -= 12;
            isAM = false;
        } else {
            isAM = true;
        }
    }

    // Method to display time
    public void displayTime() {
        String amPm = isAM ? "AM" : "PM";
        System.out.printf("Time: %02d:%02d:%02d %s\n", hours, minutes, seconds, amPm);
    }

    // Main method to get user input and test
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        try {
            System.out.print("Enter hours (0-23): ");
            int hours = scanner.nextInt();
            
            System.out.print("Enter minutes (0-59): ");
            int minutes = scanner.nextInt();
            
            System.out.print("Enter seconds (0-59): ");
            int seconds = scanner.nextInt();
            
            Clock clock = new Clock(hours, minutes, seconds);
            clock.setToAMPMMode();
            clock.displayTime();
        } catch (Exception e) {
            System.out.println("Invalid input. Please enter numeric values in the correct range.");
        } finally {
            scanner.close();
        }
    }
}
