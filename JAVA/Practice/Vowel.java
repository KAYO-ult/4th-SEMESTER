import java.util.*;

class Vowel {
    public static void main(String[] args) {
       try (Scanner sc = new Scanner(System.in)) {
            int a, b, v = 0;
            String st;
            char chr;
            System.out.println("Enter the string: ");
            st = sc.nextLine();
            b = st.length();
            for (a = 0; a < b; a++) {
                chr = st.charAt(a);
                if(chr == 'A' || chr == 'E' || chr == 'I' || chr == 'O' || chr == 'U' || chr == 'a' || chr == 'e' || chr == 'i' || chr == 'o' || chr == 'u') {
                    v++;
                }
            }
                System.out.println("Number of vowels in the string is: " + v);
        }
    }
}