import java.util.Scanner;

class Fibonacci {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the limit for Fibonacci series: ");
        int n = sc.nextInt();
  
        int firstTerm = 0, secondTerm = 1;
        System.out.println("Fibonacci Series till " + n + " are:");
  
        for (int i = 1; firstTerm <= n; i++) {
            System.out.print(firstTerm + " ");
  
            int nextTerm = firstTerm + secondTerm;
            firstTerm = secondTerm;
            secondTerm = nextTerm;
        }
    }
  }