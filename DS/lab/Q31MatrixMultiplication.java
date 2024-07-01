
import java.util.Scanner;

public class Q31MatrixMultiplication {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input matrix A (3x2)
        System.out.println("Enter elements for Matrix A (3x2):");
        int[][] a = new int[3][2];
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 2; j++) {
                a[i][j] = scanner.nextInt();
            }
        }

        // Input matrix B (2x3)
        System.out.println("Enter elements for Matrix B (2x3):");
        int[][] b = new int[2][3];
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                b[i][j] = scanner.nextInt();
            }
        }

        // Initialize matrix C (resultant matrix, size 3x3)
        int[][] c = new int[3][3];

        // Perform matrix multiplication
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                c[i][j] = 0;
                for (int k = 0; k < 2; k++) {
                    c[i][j] += a[i][k] * b[k][j];
                                 // c[i][j] = a[i][0] * b[0][j] + a[i][1] * b[1][j];

                }
            }
        }

        // Print the resultant matrix C
        System.out.println("Resultant Matrix C (3x3) after multiplication:");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print(c[i][j] + " ");
            }
            System.out.println();
        }

        scanner.close();
    }
}
