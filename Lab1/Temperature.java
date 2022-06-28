public class Temperature {
    public static void main(String[] args) {
        double degFrah;
        double degCel;
        degFrah = 98.6;
        degCel = (degFrah - 32) / 1.8;
        System.out.print(degFrah);
        // System.out.println(args);
        System.out.print(" degrees Fahrenheit equals ");
        System.out.print(degCel);
        System.out.println(" degrees Celsius");
    }

}