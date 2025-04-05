class Star {
    public static void main(String args[]) {
        int n = 5; // Number of rows

        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}











// class Star {
//     public static void main(String[] args) {
//         int n = 5; // Number of rows
//         for (int i = 1; i <= n; i++) {
//             // Print leading spaces
//             for (int j = i; j < n; j++) {
//                 System.out.print(" ");
//             }
//             // Print stars
//             for (int k = 1; k <= (2 * i - 1); k++) {
//                 System.out.print("*");
//             }
//             System.out.println();
//         }
//     }
// }