public class Carrot {

    //FIELDS
    private double x;
    private double y;

    /* Constructor for carrot: Set x and y
     *
     */
    public Carrot(double x, double y) {
        this.x = x;
        this.y = y;
    }

    /* Description: returns x location
     * @param n/a
     * @return double x
     */
    public double getX() {
        return x;
    }

    /* Description: returns y location
     * @param n/a
     * @return double y
     */
    public double getY() {
        return y;
    }

    /* Description: draw's carrot at x, y
     * @param n/a
     * @return n/a
     */
    public void draw() {
        image(loadImage("carrot.png"), (float)x, (float)y, -42, 38);
    }

    //testing
    public static void main(String[] args) {
        Carrot carrot = new Carrot(0.25, 0.8 + 0.025);
        carrot.draw();
    }
}
