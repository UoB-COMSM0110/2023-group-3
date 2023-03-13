public class Key{
  private float x;
  private float y;
  private Boolean collected;
  
  Key(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void draw(){
    // Only draw the key image when the key hasn't been collected by rabbit
    if(!collected)  image(loadImage("key.png"), x, y, width/20, height/20);
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  boolean getCollected(){
     return collected;
  }
  
  void setCollected(){
    collected = true;
  }
  
  void setNotCollected(){
    collected = false;
  }
}
