import java.util.Scanner;

public class Factorial {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a positive integer:");
        int number = scanner.nextInt();
        long factorial = 1;
        for (int i = 1; i <= number; i++) {
            factorial *= i;
        }
        System.out.println("The factorial of " + number + " is " + factorial);
    }
}

// import java.util.Scanner;

// public class Factorial {
//     public static void main(String[] args) {
//         Scanner scanner = new Scanner(System.in);
//         System.out.print("Enter a number: ");
//         int number = scanner.nextInt();
//         scanner.close();
        
//         int result = factorial(number);
//         System.out.println("Factorial of " + number + " is: " + result);
//     }

//     public static int factorial(int n) {
//         if (n <= 1) {
//             return 1;
//         } else {
//             return n * factorial(n - 1);
//         }
//     }
// }
