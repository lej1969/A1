class Target {
  float x,y;
  float vx, vy;

  
  Target() {
    x = random(100, 500);
    y = random(100, 500);
    vx = random(-3, 3);
    vy = random(-3, 3);
  }

  void show() {
    ellipse(x, y, 50, 50);
    stroke(0, 225, random(150, 255));
    strokeWeight(random(10));
    noFill();
    frameRate(20);
  }
  
  void act() {
    x = x + vx;
    y = y + vy;

    if(x < 0 || x > 600){
      vx = vx * -1;
    }
     if(y < 0 || y > 600){
      vy = vy * -1;
    }
  }
}
