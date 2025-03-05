import java.util.Scanner;

class BinarySearch {
    // Iterative Binary Search
    public static int binarySearchIterative(int[] arr, int key) {
        int left = 0, right = arr.length - 1;
        
        while (left <= right) {
            int mid = left + (right - left) / 2;

            if (arr[mid] == key)
                return mid; // Key found
            if (arr[mid] < key)
                left = mid + 1;
            else
                right = mid - 1;
        }
        return -1; // Key not found
    }

    // Recursive Binary Search
    public static int binarySearchRecursive(int[] arr, int left, int right, int key) {
        if (left > right)
            return -1; // Key not found

        int mid = left + (right - left) / 2;

        if (arr[mid] == key)
            return mid; // Key found
        else if (arr[mid] < key)
            return binarySearchRecursive(arr, mid + 1, right, key);
        else
            return binarySearchRecursive(arr, left, mid - 1, key);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        // Input array size and elements
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();
        int[] arr = new int[n];

        System.out.println("Enter " + n + " sorted elements: ");
        for (int i = 0; i < n; i++) {
            arr[i] = scanner.nextInt();
        }

        // Input the key to search
        System.out.print("Enter the key to search: ");
        int key = scanner.nextInt();

        // Performing binary search (iterative)
        int result = binarySearchIterative(arr, key);
        
        if (result != -1)
            System.out.println("Key found at index (Iterative): " + result);
        else
            System.out.println("Key not found (Iterative).");

        // Performing binary search (recursive)
        result = binarySearchRecursive(arr, 0, n - 1, key);
        
        if (result != -1)
            System.out.println("Key found at index (Recursive): " + result);
        else
            System.out.println("Key not found (Recursive).");

        scanner.close();
    }
}
