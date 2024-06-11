import java.util.Scanner;

public class Factor {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Getting the number from the user
        System.out.print("Enter a number: ");
        int number = scanner.nextInt();

        // Displaying the factors of the number
        System.out.println("Factors of " + number + " are:");
        for (int i = 1; i <= number; i++) {
            if (number % i == 0) {
                System.out.print(i + " ");
            }
        }
    }
}
