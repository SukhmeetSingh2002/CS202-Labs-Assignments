public class Circle {
    // static variables
    public static final double DFT_RAD = 10;
    public static final String DFT_COLOUR = "blue";

    // private variables
    private double radius;
    private String colour;

    // constructer
    public Circle() {
        this.setRadius(DFT_RAD);
        this.setColour(DFT_COLOUR);
    }

    public Circle(double radius) {
        this.setRadius(radius);
        this.setColour(DFT_COLOUR);
    }

    public Circle(String colour) {
        this.setRadius(DFT_RAD);
        this.setColour(colour);
    }

    public Circle(double radius, String colour) {
        this.setRadius(radius);
        this.setColour(colour);
    }

    // get and set colour
    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    // get and set radius
    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public String toString() {
        return "Circle[radius=" + this.radius + ", color=" + this.colour + "]";
    }

    // area and circumference
    public double getArea() {
        return Math.PI * radius * radius;
    }

    public double getCirm() {
        return 2 * Math.PI * radius;
    }
}