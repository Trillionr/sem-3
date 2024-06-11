import java.util.Scanner;

public class AreaOfCircle{
    public static void main(String[] args) {
        
        // double radious;
        Scanner radious = new Scanner(System.in);
        double r = radious.nextDouble();
        double answer = Math.PI*r*r;
        System.out.println(answer);
    }
}