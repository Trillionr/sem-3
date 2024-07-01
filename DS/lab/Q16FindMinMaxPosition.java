
// import java .util.Scanner;
// public class MaxMin{
//     public static void main(String[] args){
        
        
//         System.out.println("enter a array size");
//         Scanner sc = new Scanner(System.in);
//         int arr[]=new int[5];
//         int Max=arr[0];
//         int Min=arr[0];
//         for(int i=0;i <= arr.length; i++){
//             if (array[max]<arr[0]) {
                
//             }
            
//         }
//     }
// }
import java.util.Scanner;

public class FindMinMaxPosition {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input the number of elements
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();

        // Input the elements into an array
        int[] numbers = new int[n];
        System.out.println("Enter the elements:");
        for (int i = 0; i < n; i++) {
            numbers[i] = scanner.nextInt();
        }

        // Find position of the smallest number
        int minPosition = 0;
        for (int i = 1; i < n; i++) {
            if (numbers[i] < numbers[minPosition]) {
                minPosition = i;
            }
        }

        // Find position of the largest number
        int maxPosition = 0;
        for (int i = 1; i < n; i++) {
            if (numbers[i] > numbers[maxPosition]) {
                maxPosition = i;
            }
        }

        // Output the results
        System.out.println("Position of the smallest number: " + minPosition);
        System.out.println("Position of the largest number: " + maxPosition);

        scanner.close();
    }
}
