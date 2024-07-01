import java.util.Scanner;

public class DeleteFromArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of elements in the array: ");
        int n = sc.nextInt();

        int[] arr = new int[n];
        System.out.println("Enter " + n + " numbers:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        System.out.print("Enter the position (0-based index) to delete from: ");
        int position = sc.nextInt();
        sc.close();

        int[] updatedArr = new int[n - 1];

        for (int i = 0; i < position; i++) {
            updatedArr[i] = arr[i];
        }

        for (int i = position + 1; i < n; i++) {
            updatedArr[i - 1] = arr[i];
        }

        System.out.println("Updated array after deletion:");
        for (int num : updatedArr) {
            System.out.print(num + " ");
        }
    }
}
