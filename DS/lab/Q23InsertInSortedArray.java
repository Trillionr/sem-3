import java.util.Scanner;

public class InsertInSortedArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of elements in the sorted array: ");
        int n = sc.nextInt();

        int[] arr = new int[n];
        System.out.println("Enter " + n + " sorted numbers:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        System.out.print("Enter the number to insert: ");
        int numberToInsert = sc.nextInt();
        sc.close();

        int[] updatedArr = new int[n + 1];

        int i = 0;
        while (i < n && arr[i] < numberToInsert) {
            updatedArr[i] = arr[i];
            i++;
        }

        updatedArr[i] = numberToInsert;

        while (i < n) {
            updatedArr[i + 1] = arr[i];
            i++;
        }

        System.out.println("Updated array after insertion:");
        for (int num : updatedArr) {
            System.out.print(num + " ");
        }
    }
}
