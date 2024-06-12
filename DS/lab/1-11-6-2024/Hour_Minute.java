import java.util.*;
public class Hour_Minute{
    public static void main(String[] args){
        System.out.println("enter a second");
        Scanner sec = new Scanner(System.in);
        int second = sec.nextInt();
        int hour=second/3600;
            second=second-(hour*3600) ;
        int minute = second/60;
         second= second-(60*minute);

        System.out.println("hour : -  "  +hour+  "  minute : -  "+minute + "second : -  "  +second );
    }
}

