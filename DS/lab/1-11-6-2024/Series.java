import java.util.*;
public class Hour_Minute{
    public static void main(String[] args){
        System.out.println("enter a number");
        Scanner sc = new Scanner(System.in);
        int num = sc.nextInt();
      	int sum=0;
      	for (int i=1;i<=num ;i++ ) {
      		int sumof=0;
      		for (int j=1;j<=i ;j++ ) {
      			sumof +=j;
      		}
      		sum += sumof;
      	}
        System.out.println("series : -  "  + sum);
    }
}