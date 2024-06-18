import java .util.Scanner;
public class Summton{
    public static void main(String[] args){
        
        
        System.out.println("enter a m");
        Scanner sc = new Scanner(System.in);
        int m = sc.nextInt();


        System.out.println("enter a n");
        Scanner sca = new Scanner(System.in);
        int n = sca.nextInt();
        
        
        int arr[] = new int[n-m+1];
        int sum =0;
        for(int i=m;i<=n;i++){
               sum +=i;
        }
        System.out.println(sum);

    }
}
