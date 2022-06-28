public class TestCircle {
    public static void main(String[] args) {
        Circle c1 = new Circle();
        System.out.println(c1);
        Circle c2 = new Circle("white");
        System.out.println(c2);
        Circle c3 = new Circle(100);
        System.out.println(c3);
        Circle c4 = new Circle(100, "brown");
        System.out.println(c4);

        // chainging c4
        c4.setColour("pink");
        c4.setRadius(20);
        System.out.println("\nAfter changing c4\n");
        System.out.println(c4);
        System.out.println("Radius after changing = " + c4.getRadius());
        System.out.println("Colour after changing = " + c4.getColour());
        System.out.println("Circumference = " + c4.getCirm());
        System.out.println("Area = " + c4.getArea());
    }
}