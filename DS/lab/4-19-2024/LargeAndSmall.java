import java.util.Scanner;

public class LargeAndSmall {

  public static void main(String[] args) {
    System.out.println("enter a arary size");
    Scanner sc = new Scanner(System.in);
    int size = sc.nextInt();

    int arr[] = new int[size];
    int Min = arr[0];
    int Max = arr[0];
    int Maxi = 0;
    int Mini = 0;

    for (int i = 0; i < size; i++) {
      System.out.println("enter a arary element");
      arr[i] = sc.nextInt();
    }
    for (int i = 0; i < size; i++) {
      if (Max < arr[i]) {
        Max = arr[i];
        Maxi = i;
      }
      if (Min > arr[i]) {
        Min = arr[i];
        Mini = i;
      }
    }
    System.out.println(Maxi + " miximum");
    System.out.println(Mini + " Minum");
  }
}
