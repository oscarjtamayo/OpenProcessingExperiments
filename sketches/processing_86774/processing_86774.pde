
Follow[] me;
boolean m = false;
int stage = 0;
int number = 7000;
 
void setup() {
  size(500, 500);
  smooth();
  noStroke();
 
  me = new Follow[number];
 
  for (int i=0; i<number; i++)
  {
    me[i] = new Follow();
    me[i].pos.x = random(800);
    me[i].pos.y = random(800);
    me[i].d = 1;
    me[i].r = 0;
    me[i].g = (int)random(450,900);
    me[i].b = 255;
    me[i].al = 60;
  }
}
 
void draw() {
  fill(0,15,44);
  rect(0,0,width,height);
  for (int i=0; i<me.length; i++)
  {
    //me[i].update();
    me[i].bound();
    me[i].move();
    me[i].show();
  }
}
 
class Follow
{
  int d;
  int r, g, b, al;
  //
  PVector pos;
  PVector v;
  PVector acc;
  float ts;
 
  Follow() {
    pos = new PVector(random(width), random(height));
    v = new PVector(0, 0);
    ts = 10;
  }
 
  void show()
  {
    //println(v);
    //println(pos);
    fill(r, g, b, al);
    rect(pos.x, pos.y, d, d);
     rect(pos.x, 90, d, d);
     rect(pos.x, 420, d, d);
     rect(90, pos.y, d, d);
     rect(420, pos.y, d, d);
  }
 
  void update3() {
    v = new PVector(0, 0);
  }
 
  void update2() {
    PVector screen = new PVector(width/2, height/2);
    PVector dir = PVector.sub(screen, pos); 
    dir.normalize();    
    dir.mult(1.0);      
    acc = dir; 
    v.add(acc);
    v.limit(ts);
    pos.add(v);
  }
 
  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, pos); 
    dir.mult(1.9);    
    dir.mult(1.9);      
    acc = dir; 
    v.add(acc);
    v.limit(ts);
    pos.add(v);
  }
 
  void move()
  {
    if (m) {
      //pos.x += 2 * v;
      //pos.y += 2 * v;
      update2();
    }
    if (mousePressed) {
      m = true;
      update();
    }
    else {
      m = true;
    }
  }
 
  void bound() {
    if (pos.x>width) {
      pos.x = 0;
      if (mousePressed ==true){
      v = new PVector(0, 0);
      }
    }
    if (pos.x<0) {
      pos.x = width;
      if (mousePressed ==true){
      v = new PVector(0, 0);
      }
    }
    if (pos.y>height) {
      pos.y=0;
      if (mousePressed ==true){
      v = new PVector(0, 0);
      }
    }
    if (pos.y<0) {
      pos.y=height;
      if (mousePressed ==false){
      v = new PVector(0, 0);
      }
    }
  }
}
 
void mouseReleased() {
  for (int i=0; i<number; i++)
  {
    me[i].update3();
    me[i].pos = new PVector(random(width), random(height));
  }
}


