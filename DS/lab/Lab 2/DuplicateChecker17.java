import java.util.Scanner;

public class DuplicateChecker17 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of elements in the array: ");
        int n = sc.nextInt();

        int[] arr = new int[n];
        System.out.println("Enter the array elements:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        sc.close();

        boolean hasDuplicate = false;
        for (int i = 0; i < n; i++) {
            for (int j = i + 1; j < n; j++) {
                if (arr[i] == arr[j]) {
                    hasDuplicate = true;
                    break; 
                }
            }
            if (hasDuplicate) {
                break; 
            }
        }

        if (hasDuplicate) {
            System.out.println("The array contains duplicate numbers.");
        } else {
            System.out.println("The array does not contain duplicate numbers.");
        }
    }
}
