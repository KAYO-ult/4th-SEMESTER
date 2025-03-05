import java.util.Scanner;

public class WordOccurrence {
    public static int countOccurrences(String sentence, String word) {
        String[] words = sentence.split("\\s+"); // Splitting sentence into words
        int count = 0;

        for (String w : words) {
            if (w.equalsIgnoreCase(word)) { // Case-insensitive comparison
                count++;
            }
        }
        return count;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // User input
        System.out.print("Enter a sentence: ");
        String sentence = scanner.nextLine();

        System.out.print("Enter the word to find: ");
        String word = scanner.next();

        int occurrences = countOccurrences(sentence, word);

        System.out.println("The word '" + word + "' appears " + occurrences + " time(s) in the sentence.");
        
        scanner.close();
    }
}
