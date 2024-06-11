import java.util.*;
public class prime {
    public static void main(String[] args) {
        System.out.println("Enter a number ");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        if(n%2==0){
          System.out.println("not prime");
        }        
        else{
            System.out.println("prime");
        }    
    }
    
}
