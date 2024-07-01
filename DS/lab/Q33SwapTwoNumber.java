import java.util.Scanner;

public class Q33SwapTwoNumber{
    public static void main(String[] args) {
        int a,b;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enetr First number:-");
        a=sc.nextInt();
        System.out.print("Enetr second number:-");
        b=sc.nextInt(); 
        int temp=0;
        temp=a;
        a=b;
        b=temp;
        System.out.println("a is :- "+a);
        System.out.println("b is :- "+b);

    }
}