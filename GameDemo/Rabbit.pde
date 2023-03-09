public class Rabbit {
    private float x;
    private float y;
    private float velX = 0.02;
    private float velY;
    private float jumpVel = 0.012;
    private float accelG = 0.01;
    private static final float halfHeight = 0.025;
    private static final float halfWidth = 0.01;
    private boolean isAlive = true;
    private float floorLevel;
    
    /** Constructor: sets Rabbit's x and y location
      * 
      */
    public Rabbit(float x, float y) {
        this.x = x;
        this.y = y;
    }
    
    /** Description: returns x location
      * @param n/a
      * @return float x
      */
    public float getX() {
        return x;
    }
    
    /** Description: returns y location
      * @param n/a
      * @return float y
      */
    public float getY() {
        return y;
    }
    
    /** Description: returns y vel
      * @param n/a
      * @return float yVel
      */
    public float getVelY() {
        return velY;
    }
    
    /** Description: returns halfHeight
      * @param n/a
      * @return n/a
      */
    public float getHalfHeight() {
        return halfHeight;
    }
    
    /** Description: returns isAlive
      * @param n/a
      * @return boolean isAlive
      */
    public boolean isAlive() {
        return isAlive;
    }
    
    /** Description: increases x by factor of velX
      * @param n/a
      * @return n/a
      */
    public void moveRight() {
        x += velX;
    }
    
    /** Description: decreases Rabbit's x by velX
      * @param n/a
      * @return n/a
      */
    public void moveLeft() {
        x -= velX;
    }
    
    /** Description: set y location just in case
      * @param n/a
      * @return n/a
      */
    public void setY(float y) {
        this.y = y;
    }
    
    /** Description: draws Rabbit at one of the left facing images
      * @param int dir - which frame Rabbit is at
      * @return n/a
      */
    public void drawLeft(int dir) {
        if (dir % 3 == 0) {
           image(loadImage("RabbitStand.png"), x, y, width/35, height/35);
        } else if (dir % 3 == 1) {
           image(loadImage("RabbitsRun1.png"), x, y, width/35, height/35);
        } else if (dir % 3 == 2) {
           image(loadImage("RabbitsRun2.png"), x, y, width/35, height/35);
        }
    }
    
    /** Description: draws Rabbit at one of the right facing images
      * @param int dir - which frame Rabbit is at
      * @return n/a
      */
    public void drawRight(int dir) {
        if (dir % 3 == 0) {
           image(loadImage("RabbitStand.png"), x, y, width/-35, height/35);
        } else if (dir % 3 == 1) {
           image(loadImage("RabbitsRun1.png"), x, y, width/-35, height/35);
        } else if (dir % 3 == 2) {
           image(loadImage("RabbitsRun2.png"), x, y, width/-35, height/35);
        }
    }
    
    /** Description: draws Rabbit standing still
      * @param boolean facing - which direction
      * @return n/a
      */
    public void draw(boolean facing) {
        if (facing) {
            image(loadImage("RabbitStand.png"), x, y, width/-35, height/35);
        } else {
            image(loadImage("RabbitStand.png"), x, y, width/35, height/35);
        }
    }
    
        
    /** Description: draws Rabbit climbing
      * @param int dir - which frame pikachu is at
      * @return n/a
      */
    public void drawClimbing(int dir) {
        if (dir % 2 == 0) {
            image(loadImage("climbingRabbit.png"), x, y, width/35, height/35);
        } else if (dir % 2 == 1) {
            image(loadImage("climbingRabbit.png"), x, y, width/-35, height/35);
        }
    }
        
    /** Description: draws Rabbit in his jumping frame
      * @param boolean facing - which way he is facing
      * @return n/a
      */
    public void drawJump(boolean facing) {
        if (facing) {
            image(loadImage("RabbitRun2.png"), x, y, width/-35, height/35);
        } else {
            image(loadImage("RabbitRun2.png"), x, y, width/35, height/35);
        }
    }
    
    /** Description: updates Rabbits y vel for jumping feature
      * @param n/a
      * @return n/a
      */
    public void updateY() {
        y += velY;
    }
    
    /** Description: updates Rabbits y vel for jumping feature
      * @param n/a
      * @return n/a
      */
    public void jump() {
        velY = jumpVel; 
    }
    
    /** Description: updates Rabbits y vel for jumping feature
      * @param n/a
      * @return n/a
      */
    public void fall() {
        velY -= 0.001;
    }
    
    /** Description: makes Rabbit stop falling at the closest floor level to him
      * @param Floor[] f
      * @return n/a
      */
    public void stop(Floor[] f) {
        float min = Float.POSITIVE_INFINITY;
        float closest = 0;
        
        //finds minimum between y and f[i].getY()
        //closest = closest of f[i].getY()
        for (int i = 0; i < f.length; i++) {
            float temp = Math.abs(y - f[i].getY());
            if (temp < min) {
                closest = f[i].getY();
                min = temp;
            }   
        }
        y = closest + halfHeight + Floor.getHeight();
        velY = 0.0;
    }
    
    /** Description: checks if Rabbits bottom is connected to any of the floors
      * by calling the floor collision detection
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
    
    /* Descritption: checks if Rabbits x location is within a ladder
     * input: ladder
     * output: boolean true or false
     */
    public boolean ladderCollision(Ladder[] l) {
        for (int i = 0; i < l.length; i++) {
            if(l[i].getX() - 0.015 < x && x < l[i].getX() + 0.015) {
                if (l[i].getY() - 0.075 < y && y < l[i].getY() + 0.1) {
                    return true;
                }
            }
        }
        return false;
    }
    
    /* Description: Moves Rabbit up
     * @param n/a
     * @return n/a
     */
    public void moveUp() {
        y += 0.015;
    }
    
    /* Description: Moves Rabbit down
     * @param n/a
     * @return n/a
     */
    public void moveDown() {
        y -= 0.015;
    }
    
    /* Description: function to check if Rabbit is equivalent to carrot's
     * Input: carrot carrot
     * Output: boolean
     */
    public boolean hasWon(Carrot carrot) {
        if (carrot.getX() < x + 0.01 && x - 0.01 < carrot.getX()) {
            if (carrot.getY() < y + 0.015 && y - 0.015 < carrot.getY()) {
                return true;
            }
        }
        return false;
    }
    
    /* Description: Checks if Rabbit has collided with any of the stones and if
     * he has set isAlive to false
     * @param LinkedList<stone> b
     * @return n/a
     */
    public void stoneCollision(LinkedList<Stone> b) {
        int counter = 0;
        
        while (counter < b.size()) {
            if (b.get(counter).getX() < x + 0.02 &&
                x - 0.02 < b.get(counter).getX()) {
                if (b.get(counter).getY() < y + 0.03 &&
                    y - 0.03 < b.get(counter).getY())
                    isAlive = false;
            }
            counter++;
        }
    }
    
    /** Description: checks to ensure Rabbits position is valid. He cannot
      * go off the screen and isAlive is set to false if he falls off the 
      * screen
      * @param n/a
      * @return n/a
      */
    public void checkPosition() {
        if (x > 0.97) {
            x = 0.97;
        } else if (x < 0.03) {
            x = 0.03;
        }
        
        if (y < -0.05) {
            isAlive = false;
        }
    }
}
