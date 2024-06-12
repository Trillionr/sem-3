import java.util.*;
public class Hour_Minute{
    public static void main(String[] args){
        System.out.println("enter a days");
        Scanner sec = new Scanner(System.in);
        int days = sec.nextInt();
        int years=days/365;
            days=days-(years*365) ;
        int month = days/30;
         days= days-(30*month);

        System.out.println("years : -  "  +years+  "  month : -  "+month + "days : -  "  +days );
    }
}
