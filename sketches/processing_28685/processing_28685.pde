
/**
* 
* Project 3 Template, version 2
* UCLA Design Media Arts, Spring 2011 
* Prof. Casey Reas
* 
* Note: Put all of your code in the "testFace" tab. Leave
* this tab and the "volume" tab as they are. You can set
* your variables at the top of "testFace" and load images
* and other assets within the "startFace" function.
* 
* Based on code from Lorenzo Bravi:
* http://www.lorenzobravi.com/projects/workshop-isia/
*/

float v; 
float t;
float easing = 0.2;  // Between 0 and 1
float volumeScalar = 7000;
boolean noMic = true;


void setup() {
  size(500, 500);
  smooth();
  setupVolume();
  startFace();
  shapeMode(CENTER);
}

void draw() {
  background(255);
  getVolume();
  
 if (noMic == true) {
    v = map(mouseX, 0, width, 0, 600);
    t = map(mouseX, 0, width, 0, -100);
}
  
  testFace();
 
  //saveFrame("mask-####.png");
}


