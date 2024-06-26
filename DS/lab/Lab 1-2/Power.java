import java.util.Scanner;

class Power {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter Base");
        int base = sc.nextInt();

        System.out.println("Enter Power");
        int power = sc.nextInt();

        int answer = 1;

        sc.close();
        for(int i=1 ;  i<= power ; i++)
        {
            answer*=base;
        }
        System.out.println(base+"^"+ power +"=" + answer);
    }
}