

 
Ball[] balls = new Ball[4];
boolean globalGrow = true;
void setup() {
  size(500, 500);
  background (255);
  smooth();
 
 
  // Initialize balls
  for (int i = 0; i < balls.length; i ++ ) {
    balls[i] = new Ball ();
  }
}
 
void draw() {
  background(200);
 

  for (int x=0; x<4; x++) {
    for (int y=0; y<4; y++) {
      if (balls[x].intersect(balls[y])) {
        if (x != y) {
 color c = color(random(255), random(255), random(255));
          balls[x].resetMe(c);
          balls[y].resetMe(c);
}
}
}
}
 
  for (int i=0; i<4; i++) {
    if (globalGrow == true) {
      balls[i].sizeIt();
}
    balls[i].display();
  }
}

 
void mousePressed() {
  if (globalGrow == true) {
    globalGrow = false;
  } else {
    globalGrow = true;
  }
}


class Ball {
  float r; 
  float x, y;
  color c;
 
  Ball() {
    resetMe(color(random(255), random(255), random(255)));
  }
  void sizeIt() {
    r+=1;
  }
 
  void resetMe(color tempC) {
    r = 0;
    x = random(width);
    y = random(height);
    c = tempC;
  }
  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, r*2, r*2);
  }
 
  boolean intersect(Ball b) {
    float distance = dist(x, y, b.x, b.y); 
    if (distance < r + b.r) {
      return true;
    } else {
      return false;
    }
  }
}




