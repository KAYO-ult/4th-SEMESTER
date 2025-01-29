import java.util.Scanner;

public class Delete {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s1, s2 = "";
        int i,p,j,t;
        System.out.println("Enter the string: ");
        s1 = sc.nextLine();
        char ch1, ch2;
        p = s1.length();
        for (i = 0; i < p; i++) {
            ch1 = s1.charAt(i);
            t = 0;
            for (j = 0; j < s2.length(); j++) {
                ch2 = s2.charAt(j);
                if (ch1 == ch2) {
                    t = 1;
                }
            } 
            if (t == 0) {
                s2 = s2 + ch1;
            }
        }
        System.out.println("String after deleting duplicate characters: " + s2);
    }
}
    
