import java.util.Scanner;

public class vovel {
    public static void main(String[] args) {
        System.out.println("Enter a charecter");
        Scanner v = new Scanner(System.in);
        char vowel = v.next().charAt(0);
        if (vowel == 'a' || vowel == 'e' || vowel == 'i' || vowel == 'o' || vowel == 'u' ||
            vowel == 'A' || vowel == 'E' || vowel == 'I' || vowel == 'O' || vowel == 'U') {
            System.out.println("vowel");
        } else {
            System.out.println("not vowel");
        }
    }
}
