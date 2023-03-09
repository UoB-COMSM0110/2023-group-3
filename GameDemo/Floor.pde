public class Floor{
  private float x;
  private float y;
  private float halfWidth = 714;
  private float halfHeight = 40;
  
  Floor(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public float getX(){
    return x;
  }
  public float getY(){
    return y;
  }
  
  public void setX(float x){
    this.x = x;
  }
  public void setY(float y){
    this.y = y;
  }
  
  public float getWidth() {
    return halfWidth; 
  }
  public float getHeight() { 
    return halfHeight;
  }
  
  void draw(){
    image(loadImage("floor.png"), x, y, halfWidth, halfHeight);
  }
  
  public boolean collision(Rabbit rabbit) {
    return (rabbit.getY() - rabbit.getHalfHeight() <= y + halfHeight &&
            rabbit.getY() >= y && rabbit.getX() <= x + halfWidth &&
            rabbit.getX() >= x - halfWidth);
  }
  
  public boolean collision(Stone stone) {
    return (stone.getY() - stone.getRadius() <= y + halfHeight &&
            stone.getY() >= y && stone.getX() <= x + halfWidth &&
            stone.getX() >= x - halfWidth);
  }
}
