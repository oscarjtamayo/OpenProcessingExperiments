
void setup(){
  size(400,400);
  smooth();
}

void draw(){
  //noStroke();
  //fill(255)
  background(255,10);
  for(int x=0; x<width; x+=20){
  for(int y=0; y<height; y+=20){
  float abstand= dist(mouseX,mouseY,x,y);
  //abstand/=10;
  //ellipse(x,y,abstand,abstand);
  float angle=atan2(mouseY-y,mouseX-x);
  pushMatrix();
  translate(x,y);
  rotate(angle);
  //line(0,0,abstand,0);
  stroke(0);
  fill(abstand*2);
  strokeWeight(abstand/9);
 ellipse(0,0,1,2);
  popMatrix();
  }
  }
}

