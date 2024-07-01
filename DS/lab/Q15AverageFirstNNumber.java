
import java .util.Scanner;
public class AverageFirstNNumber{
    public static void main(String[] args){
        
        
        System.out.println("enter a m");
        Scanner sc = new Scanner(System.in);
        int m = sc.nextInt();
        
        // int arr[] = new int[5];
        double sum =0;
        for(int i=1;i<=m;i++){
               sum +=i;
        }

        System.out.println(sum/m);

        sc.close();

    }
}
