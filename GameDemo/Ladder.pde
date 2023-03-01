PImage ladder;

public class Ladder{
  private float x;
  private float y;
  
  Ladder(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void draw(){
    ladder = loadImage("ladder.png");
    image(ladder, x, y, width/6, height/6);
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
}
