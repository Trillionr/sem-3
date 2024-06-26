import java.math.BigInteger;
import java.util.Scanner;

public class Factorial {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a Number");
        BigInteger factorial = sc.nextBigInteger();
        BigInteger ans = BigInteger.ONE; 
        sc.close();

        for (BigInteger i = BigInteger.ONE; i.compareTo(factorial) <= 0; i = i.add(BigInteger.ONE)) {
            ans = ans.multiply(i);
        }

        System.out.println("Factorial of " + factorial + " is: " + ans);
    }
}
