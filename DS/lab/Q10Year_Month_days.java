import java.util.Scanner;

public class Year_Month_days {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a days : ");
        int days = scanner.nextInt();
        int year = days/365;
        days = days - (year*365);
        int  month = days/30;
        int day = days-(month*30);
        System.err.println(year+ " ;" + month + " ;" +day);
    }
}
