
float incrementA, incrementB;
int iterations;
int baseX, baseY;
int len;
int d;

void setup() {
  size(400,400);
  background(255);
  stroke(0,0,0,255);
  smooth();
  iterations = 5;
  baseX = width/2;
  baseY = height/2;
  len = 15;
  d = 6;
  
  randomiseIncrements();
  bifurcate(baseX,baseY,-PI/2,iterations);

}

void draw() {

}

void bifurcate(float x,float y, float a, int c) {
  float newX=x+len*cos(a);
  float newY=y+len*sin(a);
  line(x,y,newX,newY);
  if (c>0) {
    bifurcate(newX,newY,a+incrementA,c-1);
    bifurcate(newX,newY,a+incrementB,c-1);

  }

}

void randomiseIncrements(){
  incrementA=random(0,PI/d);
  incrementB=random(-PI/d,0);
}

void mousePressed() {
  background(255);
  randomiseIncrements();
  bifurcate(baseX,baseY,-PI/2,iterations);
}

