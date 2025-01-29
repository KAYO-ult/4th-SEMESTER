// import java.lang.*;
import java.util.*;

class Alphabet {
    public static void main(String arg[]) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the string: ");
        String str = sc.next();
        int i,j,p;
        char ch;
        p = str.length();
        for(i = 65; i <= 90; i++) {
            for(j = 0; j < p; j++) {
                ch = str.charAt(j);
                if(ch == (char)i || ch == (char)(i + 32)) {
                    System.out.print(ch);
                }
            }
        }
    }
}