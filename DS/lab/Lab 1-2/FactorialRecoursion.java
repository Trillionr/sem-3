import java.util.Scanner;

public class FactorialRecoursion {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a Number :");
        int Factorial = sc.nextInt();
        sc.close();
        System.out.println("Factorial of " + Factorial + " is " + fact(Factorial));
    }

    static int fact(int x) {
        if (x == 1 || x == 0) {
            return 1;
        } else {
            return x * fact(x - 1);
        }
    }

}
