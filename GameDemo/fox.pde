public class Fox {
  private float x;
  private float y;
  private PImage[] images;
  private int numImages = 3;
  
  public Fox(float x, float y) {
    this.x = x;
    this.y = y;
    images = new PImage[numImages];
    for (int i = 0; i < numImages; i++) {
      images[i] = loadImage("Fox" + i + ".png"); // load each image and store it in the array
    }
  }
  
  public float getX() {
    return x;
  }
  
  public float getY() {
    return y;
  }
  
  public void drawLeft() {
    image(loadImage("Fox0.png"), x, y, width/8, height/8);
  }
  
  public void drawCenter() {
    image(loadImage("Fox1.png"), x, y, width/8, height/8);
  }
  
  public void drawRight() {
    image(loadImage("Fox2.png"), x, y, width/8, height/8);
  }
  
  public void drawOriginal() {
    image(loadImage("FoxOriginal.png"), x, y, width/8, height/8);
  }
  
  public void moveStone() {
    for (int i = 0; i < numImages; i++) {
      image(images[i], x, y, width/8, height/8);
      delay(100);
  }
}
