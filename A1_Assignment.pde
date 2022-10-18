int x, y, w, h, speedX, speedY;

void setup() {
  size(800, 800);
   background (50);
  x = width/2;
  y = height/2;
  w = 50;
  h = 50;
  speedX = 9;
  speedY = 5;
}

void draw() {
  stroke(random(50, 250));
  strokeWeight(random(70));
  noFill();
  ellipse(x, y, w, h);
  frameRate(45);

  //ellipse
  if (x > width - w/2){
    speedX = -speedX; 
  }
  else if (x < 0 + w/2){
    speedX = -speedX;
  }
  
    if (y > height - h/2){
    speedY = -speedY;
  }
  else if (y < 0 + h/2){
    speedY = -speedY;
  }
  
  x = x + speedX;
  y = y + speedY;
   
}

void mousePressed() {
  save("A1_Assignment_Le.png");
}
