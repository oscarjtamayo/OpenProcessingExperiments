
import netscape.javascript.*;
PImage img;
int pointillize = 5;

void setup() {
  size(400,300);
  img = loadImage("tay.JPG");
  img.resize(400,300);
  image(img, 0, 0);
  background(0);
  smooth();
}

void draw() {
 for(int i = 0; i < 10; i++){
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  rect(x,y,pointillize,pointillize);
 }
}


