
import java.util.Scanner;

public class UserMultiplication {

    public static void main(String[] args) {
        int n,m;
        Scanner scanner = new Scanner(System.in);
        n=scanner.nextInt();
        m=scanner.nextInt();
        int a[][] = new int[n][m];
        int b[][] = new int[m][n];
        int c[][] = new int[n][n];
        
        // first array scann
        System.out.println("Enter first Matrix (3*2):-");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                a[i][j] = scanner.nextInt();
            }
        }
         
        System.out.println("Addition of two matrix:-");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                System.out.print(a[i][j] + " ");
            }
            System.out.println();
        }
        
        
        // second array scan
        System.out.println("Enter second  Matrix (2*3):-");
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                b[i][j] = scanner.nextInt();
            }
        }

         System.out.println("Addition of two matrix:-");
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print(b[i][j] + " ");
            }
            System.out.println();
        }

        // // multiplication
        // for (int i = 0; i < 3; i++) {
        //     for (int j = 0; j < 3; j++) {
        //         // c[i][j] = 0;
        //         // for (int m = 0; m < 2; m++) {
        //         c[i][j] = a[i][0] * b[0][j] + a[i][1] * b[1][j];
        //         // }
        //     }
        // }

        // //print array
        // System.out.println("Addition of two matrix:-");
        // for (int i = 0; i < 3; i++) {
        //     for (int j = 0; j < 3; j++) {
        //         System.out.print(c[i][j] + " ");
        //     }
        //     System.out.println();
        // }
    }
}
