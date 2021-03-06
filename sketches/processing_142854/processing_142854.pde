
// SOS iDesign
// KU DYNAMIC MEDIA
// David Mrugala

float left;
float right;

void setup() 
{
  size(600, 600, P3D);
  smooth(0);
  background(#325A7D);
}

void draw() 
{
  background(#325A7D);

  translate(width/2,height/2);  
  for(int i = 0; i < 500; i++) {
    noStroke();
    fill(255,100);
    rotateX(left-float(i)*2);
    rotateY(right);
    rotateZ(0);
    rect(100, 100, 70, 70);
  }
  left -= 0.001;
  right += 0.002;
}

void mousePressed(){
  noLoop();
}

void mouseReleased(){
  loop();
}
