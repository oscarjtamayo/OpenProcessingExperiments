
 
int numParticles = 50;
 
GenParticle[] p = new GenParticle[numParticles];
  
  
void setup() {
  size(600, 600);
  background(0);
  smooth();
  
   
  for (int i = 0; i < p.length; i++) {
    float velX = random(2, 5);
    float velY = random(-3,3);
     
    if (random(8)>4){
       p[i] = new smallParticle (width/3, height/3, velX, velY, 0, width/3, height/3);
    }
    else{
      p[i]= new SmokeParticle (width/3, height/3, velX, velY, 100, width/3, height/3);
    }
  }
}
 
  
void draw() {
   
  for (int i = 0; i < p.length; i++) {
    p[i].regenerate();
    p[i].update();
    p[i].display();
  }
}
 
class smallParticle extends GenParticle {
   
  smallParticle(float xIn, float yIn, float vxIn, float vyIn, float r, float ox, float oy) {
    super(xIn, yIn, vxIn, vyIn, r, ox, oy);
  }
   
  void display(){
    ellipse(x,y,width,height);
    fill(0,0,0,100);
    stroke(0,200,200);
  }
   
  void regenerate(){
    if ((x > width) || (x < -width) ||
      (y > height) || (y < -height)) {
      x = width/2;
      y = height/2;
      vx = random(-2, 2);
      vy = random(-4.0, 2.0);
    }
  }
   
   
   
}
 
class SmokeParticle extends GenParticle{
   
  SmokeParticle(float xIn, float yIn, float vxIn, float vyIn, float r, float ox, float oy) {
    super(xIn, yIn, vxIn, vyIn, r, ox, oy);
  }
   
  void update() {
    if(y >= height - radius) {
      y = height - radius;
      vy = -0.3 * vy;
    }
     
    vy = vy + gravity;
    y += vy;
    x += vx;
  }
   
  void display(){
    ellipse(x, y, radius, radius);
    fill(0,100);
    noStroke();
  }
   
   void regenerate(){
    if ((x > width) || (x < -width) ||
      (y > height) || (y < -height)) {
      x = width/2;
      y = height/2;
      vx = random(-2, 2);
      vy = random(-4.0, 2.0);
    }
  }
   
}
 
class GenParticle extends Particle {
  float originX, originY;
  
  GenParticle(float xIn, float yIn, float vxIn, float vyIn, float r, float ox, float oy) {
    super(xIn, yIn, vxIn, vyIn, r);
    originX = ox;
    originY = oy;
  }
  
  void regenerate() {
    if ((x > width + radius) || (x < -radius) ||
      (y > height + radius) || (y < -radius)) {
      x = originX;
      y = originY;
      vx = random(-2.0, 2.0);
      vy = random(-4.0, -2.0);
    }
  }
}
  
class Particle {
  float x, y; 
  float vx, vy;
  float radius; 
  float gravity = 0.05; 
  
  Particle(float xpos, float ypos, float velx, float vely, float r) {
    x = xpos;
    y = ypos;
    vx = velx;
    vy = vely;
    radius = r;
  }
  
  void update() {
    vy = vy + gravity;
    y += vy;
    x += vx;
  }
  
 
  void display() {
    ellipse(x, y, radius*2, radius*2);
  }
}


