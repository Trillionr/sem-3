import java.util.Scanner;
public class Character {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a character = ");
        char Ch = sc.next().charAt(0);
        if(Ch=='a' || Ch=='e' ||Ch=='i' ||Ch=='o' ||Ch=='u'){
            System.out.println("Character is Vowel");
        }
        else{
            System.out.println("Character is Consonent");
        }
        sc.close();  
    }
}