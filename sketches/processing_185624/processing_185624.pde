
void setup(){
  size(600,600);
  colorMode(HSB);
}
void draw(){
  for(int i = 500;i>0;i=i-20){
    stroke((i/2)+(mouseX),mouseY,255);
    ellipse(mouseX,300,i,mouseY);
  }
}