import java.util.Scanner;

public class InchesToFeet {

    public static void main(String[] args) {
        int inch = 45;
        Scanner sc = new Scanner(System.in);
        inch = sc.nextInt();
        System.out.print(inch);
        System.out.print(" inches = ");
        System.out.print(inch / 12);
        System.out.print("feet, ");
        System.out.print(inch % 12);
        System.out.println(" inches");
        sc.close();
    }
}