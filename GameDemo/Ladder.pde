PImage ladder;

class Ladder{
  float x;
  float y;
  float halfHeight = 0.075;
  float halfWidth = 0.015;
  
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
