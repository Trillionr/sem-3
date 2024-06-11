import java.util.Scanner;

public class OddEven {
    public static void main(String[] args) {
        System.out.println("Enter a first number");
        Scanner a = new Scanner(System.in);
        int first = a.nextInt();
        System.out.println("Enter a second number"); 
        Scanner b = new Scanner(System.in);
        int second = a.nextInt();
        if (first>second) {
            System.out.println(first+" bigger ");
        }
        else{
            System.out.println(second+"bigger");
        }
    }
}
