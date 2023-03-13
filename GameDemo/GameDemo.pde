void setup(){
  // Basic setup
  size(1000, 1150);
  background(250);
  // "Score" & "Level" text
  fill(0);
  textSize(45);
  text("Score: ", 0, 50);
  text("Level: ", 0, 100);

  // Create objects
  /* Test Ladder class, please feel free to change if you need :) */  
  Floor floor1 = new Floor(0, 1050);
  floor1.draw();
  Floor floor2 = new Floor(500, 1050);
  floor2.draw();
  Floor floor3 = new Floor(300, 900);
  floor3.draw();
  Floor floor4 = new Floor(-450, 900);
  floor4.draw();
  Floor floor5 = new Floor(-100, 750);
  floor5.draw();
  Floor floor6 = new Floor(550, 750);
  floor6.draw();
  Floor floor7 = new Floor(-500, 600);
  floor7.draw();
  Floor floor8 = new Floor(400, 600);
  floor8.draw();
  Floor floor9 = new Floor(100, 450);
  floor9.draw();
  Floor floor10 = new Floor(400, 450);
  floor10.draw();
  Floor floor11 = new Floor(0, 300);
  floor11.draw();
  Floor floor12 = new Floor(400, 300);
  floor12.draw();
  Floor floor13 = new Floor(400, 150);
  floor13.draw(); 
  
  Ladder ladder1 = new Ladder(300, 900); 
  ladder1.draw(); 
  Ladder ladder2 = new Ladder(80, 750); 
  ladder2.draw(); 
  Ladder ladder3 = new Ladder(650, 750); 
  ladder3.draw(); 
  Ladder ladder4 = new Ladder(0, 600); 
  ladder4.draw(); 
  Ladder ladder5 = new Ladder(380, 600); 
  ladder5.draw(); 
  Ladder ladder6 = new Ladder(750, 450); 
  ladder6.draw(); 
  Ladder ladder7 = new Ladder(600, 300); 
  ladder7.draw(); 
  Ladder ladder8 = new Ladder(180, 300); 
  ladder8.draw(); 
  Ladder ladder9 = new Ladder(500, 150); 
  ladder9.draw(); 
  
  Fox fox = new Fox(20, 170);
  fox.drawOriginal();
  
  Rabbit rabbit = new Rabbit(840, 980);
  rabbit.draw(false);
  
  Stone stone = new Stone(100, 220, rabbit);
  stone.draw();
  
  Carrot carrot = new Carrot(900, 50);
  carrot.draw();
  
  Box box = new Box(910, 80);
  box.setIsLocked();  // set the box's state to "Locked" at the beginning
  box.draw();
  
  Key theKey = new Key(20, 850);
  theKey.setNotCollected();  // set the key's state to "not collected" at the beginning to show the key image
  theKey.draw(); 
  
}
