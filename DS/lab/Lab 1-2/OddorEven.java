import java.util.Scanner;

public class OddorEven {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter an integer = ");
        int integer = sc.nextInt();
        sc.close();
        if (integer % 2 == 0) {
            System.out.println(integer + " is Even");
        } else {
            System.out.println(integer + " is Odd");
        }
        sc.close();
    }
}   