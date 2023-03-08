void setup(){
  // Basic setup
  size(1000, 1000);
  background(250);

  // Create objects
  /* Test Ladder class, please feel free to change if you need :) */
  Carrot carrot = new Carrot(100, 100);
  carrot.draw();
  Ladder ladder = new Ladder(100, 400); 
  ladder.draw(); 
  Ladder ladder2 = new Ladder(200, 600); 
  ladder2.draw(); 
  Ladder ladder3 = new Ladder(500, 600); 
  ladder3.draw(); 
  Floor floor1 = new Floor(50, 750);
  floor1.draw();
  Floor floor2 = new Floor(200, 600);
  floor2.draw();
  Floor floor3 = new Floor(75, 400);
  floor3.draw();
}
