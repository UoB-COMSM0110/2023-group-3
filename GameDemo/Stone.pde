//this pde do not have following
class Stone {
  
  
    private float x, y;
    private float speed;
    private PImage stoneImage;
    private Rabbit rabbit;
    private float velX = 0.005;
    private float velY;
    private float fallVel = 0.01;
    private static final float radius = 0.025;
    private int floorLevel = 0;
    private int angle = 0;
    
  Stone(float x, float y, Rabbit rabbit, float speed) {
    this.x = x;
    this.y = y;
    this.rabbit = rabbit;
    this.speed = speed;
    // Load the stone image once in the constructor
    stoneImage = loadImage("stone.png");
  }
  
  void draw(){
   image(stoneImage, width/2 - stoneImage.width/2, 0);

    }
    
    public void rollRight() {
        x += velX;
    }
    
    /* Description: changes the x position to the left
     * @param n/a
     * @return n/a
     */
    public void rollLeft() {
        x -= velX;
    }  
    
    public float getX() {
        return x;
    }
    
    /* Description: returns y position
     * @param n/a
     * @return n/a
     */
    public float getY() {
        return y;
    }
    
    /* Description: gets floor level of barrel
     * @param n/a
     * @return int floorLevel
     */
    public int getFloorLevel() {
        return floorLevel;
    }
    
    
    public void setFloorLevel(int floorLevel) {
        this.floorLevel = floorLevel;
    }
    
    /* Description: returns y velocity
     * @param n/a
     * @return n/a
     */
    public float getVelY() {
        return velY;
    }
    
    /* Description: returns radius of barrels
     * @param n/a
     * @return double radius
     */
    public float getRadius() {
        return radius;
    }
    
    /* Updates barrel's y position
     * @param n/a
     * @return n/a
     */
    public void updateY() {
        y += velY;
    }
    
    /* make the barrel fall by lowering y velocity
 * @param n/a
     * @return n/a
     */
    public void fall() {
        velY -= 0.001;
    }
    
    /* Stop the barrel from falling and put it at its floor level
     * @param n/a
     * @return n/a
     */
    public void stop(Floor[] f) {
        velY = 0.0;
        
        //safety checking code
        y = f[floorLevel].getHeight() + f[floorLevel].getY() + radius;
    }
    
    /* checks if barrel is connected to any of the floors
     * @param array of floors
     * @return boolean true or false
     */
    public boolean floorCollision(Floor[] f) {
        boolean floorCollide = false;
        
        for (int i = 0; i < f.length; i++) {
            if (f[i].collision(this)) {
                floorCollide = true;
            }
        }
        return floorCollide;
    }
    
