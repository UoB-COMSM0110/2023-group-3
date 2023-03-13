public class Ladder{
  private float x;
  private float y;
  
  Ladder(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void draw(){
    image(loadImage("ladder.png"), x, y, width/6, height/6.8);
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
}
