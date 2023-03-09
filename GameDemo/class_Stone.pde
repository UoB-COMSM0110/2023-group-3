class Mario{
}

class Stone {
  
  
    private float x, y;
    private float speed;
    private PImage stoneImage;
    private Mario mario;
    
  Stone(float x, float y, Mario mario, float speed) {
    this.x = x;
    this.y = y;
    this.mario = mario;
    this.speed = speed;
    // Load the stone image once in the constructor
    stoneImage = loadImage("stone.jpeg");
  }
  
void draw(){
    image(stoneImage, width/2 - stoneImage.width/2, 0);

}
  
  /*void move() {
    if (mario.getX() > x) {
      x += speed;
    } else {
      x -= speed;
    }
    y += speed;
  }*/
}
