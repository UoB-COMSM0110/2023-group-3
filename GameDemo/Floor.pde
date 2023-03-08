public class Floor{
  private float x;
  private float y;
  
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
  
  void draw(){
    image(loadImage("floor.png"), x, y, width/1.4, height/25);
  }
}
