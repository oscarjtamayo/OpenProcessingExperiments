
PImage teddy;
PImage sky;

float xpos;
float ypos;
float drag = 30.0;

void setup() {
  size(1000, 1000);
  teddy = loadImage("me.png");
  sky = loadImage("background1.jpg");
  xpos = width/2;
  ypos = height/2;
  // resize the background image so that it fills the screen
  if (sky.width != width || sky.height != height) {
    sky.resize(width, height);
  }
}

void draw() {
  background(sky);
  
  float difx = mouseX - xpos-teddy.width/2;
  if (abs(difx) > 1) {
    xpos = xpos + difx/drag;
    xpos = constrain(xpos, 0, width-teddy.width);
  }  
  
  float dify = mouseY - ypos-teddy.height/2;
  if (abs(dify) > 1 ) {
    ypos = ypos + dify/drag;
    ypos = constrain(ypos, 0, height-teddy.height);
  }  
  
  // Display the sprite at the position xpos, ypos
  image(teddy, xpos, ypos);
}

