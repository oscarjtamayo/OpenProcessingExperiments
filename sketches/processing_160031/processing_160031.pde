
// code begins here - declaring global variables
int posx;
int posy;
int xd = 10;
int yd = 20;
int w =80;
int h = 80;

// define setup function
void setup() {
  size(600,400);
  frameRate(20);
  }

// define draw function
void draw() {
  background(255);
  ball (posx, posy, w, h);
  posx = posx + xd;
  posy = posy + yd;
  if (posx>width-40) {
     xd = -xd;
   }
  if (posy>height-40) {
     yd = -yd;
   }
  if (posx<0) {
     xd = -xd;
   }
  if (posy<0) {
     yd = -yd;
   }
}

// define ball function
void ball (int x,int y,int w,int h) {
   fill (random(0, 255), random(25, 255), random(0, 255), random( 25, 255)); 
   ellipse(x, y, w, h);
   noStroke();
   
}



