void setup(){
  // Basic setup
  size(1000, 1000);
  background(250);

  // Create objects
  /* Test Ladder class, please feel free to change if you need :) */
  Carrot carrot = new Carrot(100, 100);
  carrot.draw();
  Ladder ladder = new Ladder(100, 800); 
  ladder.draw(); 
  Ladder ladder2 = new Ladder(400, 800); 
  ladder2.draw(); 
  Ladder ladder3 = new Ladder(700, 800); 
  ladder3.draw(); 
}
