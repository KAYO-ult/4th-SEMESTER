import java.util.Scanner;

public class WordCount {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Sentence: ");
        String sentence = sc.nextLine();
        System.out.print("Word: ");
        String word = sc.next();

        int count = 0;
        for (String w : sentence.split(" ")) {
            if (w.equalsIgnoreCase(word)) count++;
        }

        System.out.println("'" + word + "' appears " + count + " time(s).");
    }
}
