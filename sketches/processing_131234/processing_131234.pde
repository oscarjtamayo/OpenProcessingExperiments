
int counter;

void setup() {  //setup function called initially, only once
  size(250, 250);
  background(255);  //set background white
  colorMode(HSB);   //set colors to Hue, Saturation, Brightness mode
  counter = 0;
}

void draw() {  //draw function loops 
  counter++;
  noStroke();
  fill(random(255),39,255,65);
  
  if(mousePressed == true) { //add some interaction
    ellipse(mouseX, mouseY, 15,15);
  }
  else {
    ellipse(width/2, height/2, 20PI*sin(counter), 20PI*sin(counter));
  }
}
