import java.util.*;

class Avg {
    public static void main(String[] args) {
        // Using try-with-resources to automatically close the Scanner
        try (Scanner SC = new Scanner(System.in)) {
            System.out.println("Enter three numbers to find their average: ");
            int a = SC.nextInt();
            int b = SC.nextInt();
            int c = SC.nextInt();
            
            float avg = (a + b + c) / 3;
            
            System.out.println("Average is: (" + a + " + " + b + " + " + c + ") / 3 = " + avg);
        }
    }
}