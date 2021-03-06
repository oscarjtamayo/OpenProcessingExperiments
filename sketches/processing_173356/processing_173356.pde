
PImage froggy;

void setup(){
  size(1000,600);
  froggy= loadImage("froggy.jpg");
  
  frameRate(30);
}

void draw(){
  
  if(mousePressed){
    println(mouseX);
    println(mouseY);
  }
  
image(froggy,0,0);
strokeWeight(3);
    catmullRom(0, 0, 524,174, mouseX, mouseY, 617,140 ); 
    catmullRom(100, 300, mouseX, mouseY, 617,140, width, 0);
}

void catmullRom (float x1, float y1, float x2, float y2, 
float x3, float y3, float x4, float y4) 
{ 
 stroke(255,0,0);
 fill(255,0,0);
  beginShape();
  for (float t=0; t<=1; t+=0.02) {
    float t2 = t*t;
    float t3 = t2*t;
    float x= (-.5*x1 + 1.5*x2 -1.5*x3 + .5*x4)*t3 + (x1 -2.5*x2 +2*x3 -.5*x4)*t2 + (-.5*x1 + .5*x3)*t + x2; 
    float y= (-.5*y1 + 1.5*y2 -1.5*y3 + .5*y4)*t3 + (y1 -2.5*y2 +2*y3 -.5*y4)*t2 + (-.5*y1 + .5*y3)*t + y2; 
    
    vertex(x, y);
  }
  endShape(CLOSE);
}


