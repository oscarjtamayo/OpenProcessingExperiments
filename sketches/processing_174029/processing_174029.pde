
float noise_val = 0.0;
void setup(){
  frameRate(30);
  size(500,500);
  noStroke();
  smooth();
}
void draw(){
  translate(150,25);
  fill(255);
  float x =0;
  rect(0,0,200,450);
  while (x<200){
    noStroke();
    stroke(20,100,200);
    line(x,200+(map(mouseY,0,height,50,175)*noise(x/100,noise_val)),x,450);
    x=x+5;
  }
  noise_val = noise_val+0.02;
 
}
