import java.util.Scanner;

public class DeleteFromSortedArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of elements in the sorted array: ");
        int n = sc.nextInt();

        int[] arr = new int[n];
        System.out.println("Enter " + n + " sorted numbers:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        System.out.print("Enter the number to delete: ");
        int numberToDelete = sc.nextInt();
        sc.close();

        
        int indexToDelete = -1;
        for (int i = 0; i < n; i++) {
            if (arr[i] == numberToDelete) {
                indexToDelete = i;
                break;
            }
        }

        if (indexToDelete == -1) {
            System.out.println("Number not found in the array.");
            return;
        }

   
        for (int i = indexToDelete; i < n - 1; i++) {
            arr[i] = arr[i + 1];
        }

        n--;

        System.out.println("Updated array after deletion:");
        for (int i = 0; i < n; i++) {
            System.out.print(arr[i] + " ");
        }
    }
}
