import java.util.Scanner;

public class PowerRecursion {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter Base:");
        int base = sc.nextInt();

        System.out.println("Enter Power:");
        int power = sc.nextInt();

        int result = power(base, power);
        System.out.println(base + " raised to the power of " + power + " is " + result);

        sc.close();
    }

    static int power(int x, int y) {
        if (y == 0) {
            return 1;
        } else {
            return x * power(x, y - 1);
        }
    }

}
