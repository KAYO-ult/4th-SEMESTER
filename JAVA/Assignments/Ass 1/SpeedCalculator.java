import java.util.Scanner;

public class SpeedCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter distance (in meters): ");
        double distance = scanner.nextDouble();

        System.out.print("Enter time - Hours: ");
        int hours = scanner.nextInt();
        
        System.out.print("Enter time - Minutes: ");
        int minutes = scanner.nextInt();
        
        System.out.print("Enter time - Seconds: ");
        int seconds = scanner.nextInt();

        double totalSeconds = (hours * 3600) + (minutes * 60) + seconds;

        double speedMetersPerSec = distance / totalSeconds;
        double speedKmPerHour = (distance / 1000.0) / (totalSeconds / 3600.0);
        double speedMilesPerHour = (distance / 1609.0) / (totalSeconds / 3600.0);

        System.out.println("Speed in meters per second: " + speedMetersPerSec);
        System.out.println("Speed in kilometers per hour: " + speedKmPerHour);
        System.out.println("Speed in miles per hour: " + speedMilesPerHour);
        
        scanner.close();
    }
}
