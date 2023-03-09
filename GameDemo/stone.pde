
class Stone {
  
    private float x, y;
    private PImage stoneImage;    
    private float velX = 0.005;
    private float velY;
    private float fallVel = 0.01;
    private static final float radius = 0.025;
    private int floorLevel = 0;
    private int angle = 0;
    private Rabbit rabbit; // new field to store the Rabbit object to follow
    
    Stone(float x, float y, Rabbit rabbit) { // modified constructor to accept a Rabbit object
        this.x = x;
        this.y = y;
        this.rabbit = rabbit;
        stoneImage = loadImage("stone.png");
    }
  
    void draw() {
        image(stoneImage, width/2 - stoneImage.width/2, 0);
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
        velY -= 0.001;
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
    
    public void followRabbit() { // new method to update position based on Rabbit's position
        x = rabbit.getX() + rabbit.getVelX(); // set x to Rabbit's x position plus Rabbit's x velocity
        y = rabbit.getY() - radius; // set y to Rabbit's y position minus Stone's radius (to stay on top of Rabbit)
    }
}
