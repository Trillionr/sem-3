import java .util.Scanner;
public class NnumberArray{
    public static void main(String[] args){
        System.out.println("enter a arary");
        Scanner sc = new Scanner(System.in);
        int size = sc.nextInt();
        int arr[] = new int[size];
        for(int i=0;i<size;i++){
                    System.out.print("enter a arary element");
                    arr[i]=sc.nextInt();
        }

                for(int i=0;i<=size;i++){
                    System.out.println(  arr[i]);
        }
    }
}