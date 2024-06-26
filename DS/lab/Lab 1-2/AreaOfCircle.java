import java.util.Scanner;

public class AreaOfCircle {
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter radius = ");
        double radius = sc.nextDouble();
        System.out.print("Area is " + (Math.PI * radius * radius));
        sc.close();
    }
}