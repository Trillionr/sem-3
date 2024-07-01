import java.util.Scanner;

public class serias{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a number : ");
        int number = scanner.nextInt();
        int sum=0;
        for (int i=1;i<=number;i++){
            int count = 0;
            for(int j=1 ; j<=i ;j++){
                count += j;
            }
            sum += count;
        }
        System.err.println(sum);
    }
}