//still fixing following algorithm, please use aother Stone class to test

public class Stone{
  
    private float x, y;
    private PImage stoneImage;
    private float velX = 0.005;
    private float velY;
    private float fallVel = 0.01;
    private static final float radius = 0.025;
    private int floorLevel = 0;
    private int angle = 0;
    private Rabbit rabbit;
    private boolean following = true;
    
    Stone(float x, float y, Rabbit rabbit) { 
        this.x = x;
        this.y = y;
        this.rabbit = rabbit;
        stoneImage = loadImage("stone.png");
    }
    
    public void draw() {
        image(stoneImage, x, y);
    }
    
    public void rollRight() {
        x += velX;
    }

    public void rollLeft() {
        x -= velX;
    }

    public float getX() {
        return x;
    }

    public float getY() {
        return y;
    }

    public int getFloorLevel() {
        return floorLevel;
    }

    public void setFloorLevel(int floorLevel) {
        this.floorLevel = floorLevel;
    }

    public float getVelY() {
        return velY;
    }

    public float getRadius() {
        return radius;
    }

    public void updateY() {
        y += velY;
    }

    public void fall() {
        velY -= fallVel;
    }

    public void stop(Floor[] f) {
        velY = 0.0;
        y = f[floorLevel].getHeight() + f[floorLevel].getY() + radius;
    }
    
    public boolean floorCollision(Floor[] f) {
        boolean floorCollide = false;
        for (int i = 0; i < f.length; i++) {
            if (f[i].collision(this)) {
                floorCollide = true;
            }
        }
        return floorCollide;
    }

    public void followRabbit(int duration) {
        if (following && rabbit != null && rabbit.getFloorLevel() == floorLevel) {
            if (x < rabbit.getX()) {
                rollRight();
            } else if (x > rabbit.getX()) {
                rollLeft();
            }
            duration--;
            if (duration <= 0) {
                following = false;
            }
        }
    }
    
    public static void main(String[] args) {
        Stone b = new Stone(0.5f, 0.5f, null);
        PImage stoneImage = loadImage("stone.png");
        size(500, 500);
        frameRate(30);

       

        int duration = 60;

        while (duration > 0) {
            clear();
            b.draw();
            b.fall();
            b.updateY();
            b.followRabbit(duration);
            duration--;
        }
    }
}
