public class Box{
  private float x;
  private float y;
  private Boolean isLocked;
  
  Box(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void draw(){
    if(isLocked)  image(loadImage("boxLocked.png"), x, y, width/13, height/13);
    else  image(loadImage("boxUnLocked.png"), x, y, width/13, height/13);
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  boolean getIsLocked(){
     return isLocked;
  }
  
  void setIsLocked(){
    isLocked = true;
  }
  
  void setUnLocked(){
    isLocked = false;
  }
}
