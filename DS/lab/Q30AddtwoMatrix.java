import java.util.Scanner;

public class Q30AddtwoMatrix {

  public static void main(String[] args) {
    int a[][] = new int[3][3];
    int b[][] = new int[3][3];
    int c[][] = new int[3][3];

    Scanner scanner = new Scanner(System.in);
   // first
   System.out.println("Enter first array");
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        a[i][j] = scanner.nextInt();
      }
    }
    //second
   System.out.println("Enter second array");
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        b[i][j] = scanner.nextInt();
      }
    }

    //add
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        c[i][j] = a[i][j]+b[i][j];
      }
    }
    //print
   System.out.println("final");
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        System.out.print(c[i][j] + " ");
      }
      System.out.println(" ");
    }
  }
}
