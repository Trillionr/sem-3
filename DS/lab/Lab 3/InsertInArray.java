import java.util.Scanner;

public class InsertInArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of elements in the array: ");
        int n = sc.nextInt();

        int[] arr = new int[n];
        System.out.println("Enter " + n + " numbers:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        System.out.print("Enter the number to insert: ");
        int numberToInsert = sc.nextInt();

        System.out.print("Enter the position (0-based index) to insert at: ");
        int position = sc.nextInt();
        sc.close();

        int[] updatedArr = new int[n + 1];
        
        for (int i = 0; i < position; i++) {
            updatedArr[i] = arr[i];
        }

        updatedArr[position] = numberToInsert;

        for (int i = position; i < n; i++) {
            updatedArr[i + 1] = arr[i];
        }

        System.out.println("Updated array after insertion:");
        for (int num : updatedArr) {
            System.out.print(num + " ");
        }
    }
}
