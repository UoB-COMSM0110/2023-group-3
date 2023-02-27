
public class Carrot {

   
    private float x;
    private float y;

    
    public Carrot(float x, float y) {
        this.x = x;
        this.y = y;
    }

    
    public float getX() {
        return x;
    }

    
    public float getY() {
        return y;
    }

   
    public void draw() {
        image(loadImage("carrot.png"), x, y, width/9, height/9);
    }

}
