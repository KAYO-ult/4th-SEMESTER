import java.util.*;

class Add {
    public static void main(String[] args) {
        try (Scanner SC = new Scanner(System.in)) {
        System.out.println("Enter two numbers:");
        int a = SC.nextInt();
        int b = SC.nextInt();
        
        int c = a + b;
        
        System.out.println("Sum is, " + a + " + " + b + " = " + c);
        }    
    }
}