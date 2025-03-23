import java.util.Scanner;

class BinarySearch {
    public static int binarySearch(int[] arr, int key) {
        int left = 0, right = arr.length - 1;
        while (left <= right) {
            int mid = left + (right - left) / 2;
            if (arr[mid] == key) return mid;
            if (arr[mid] < key) left = mid + 1;
            else right = mid - 1;
        }
        return -1;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Enter number of elements: ");
        int n = scanner.nextInt();
        int[] arr = new int[n];

        System.out.println("Enter sorted elements: ");
        for (int i = 0; i < n; i++) arr[i] = scanner.nextInt();

        System.out.print("Enter key to search: ");
        int key = scanner.nextInt();

        int result = binarySearch(arr, key);
        System.out.println(result != -1 ? "Key found at index: " + result : "Key not found.");

        scanner.close();
    }
}
