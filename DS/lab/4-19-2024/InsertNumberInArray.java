import java.util.Arrays;
import java.util.Scanner;

public class InsertNumberInArray{
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int arr1[]= new int[n];
        System.out.println("Enter a Number");
        for(int i=0;i<n;i++){
            arr1[i]=sc.nextInt();
        }
        System.out.println("Enter a index number");
        int index = sc.nextInt();
        System.out.println("Enter a replace number");
        int replace = sc.nextInt();

        int arr2[]= new int[n+1];

        for(int i=0;i<n;i++){
            arr2[i]=arr1[i];
        }
        arr2[index]= replace;

         for(int i=index+1;i<arr1.length;i++){
            
            arr2[i]=arr1[i];
        }

        System.out.println(Arrays.toString(arr2));
    }
}