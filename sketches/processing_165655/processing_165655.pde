
PFont fonty;
int xspacing = 16;   // How far apart should each horizontal location be spaced
int w;              // Width of entire wave
  
float theta = 0.0;  // Start angle at 0
float amplitude = 75.0;  // Height of wave
float period = 500.0;  // How many pixels before the wave repeats
float dx;  // Value for incrementing X, a function of period and xspacing
float[] yvalues;  // Using an array to store height values for the wave
   
void setup() {
  size(816,900);
  fill(0,0,0);
  noStroke();
  rect(0,0,width,height);
  w = width+16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new float[w/xspacing];
  fonty = loadFont("HiraKakuPro-W6-48.vlw");
}
   
void draw() {
  background(0);
  back();
  mainPage();
  percentiles(408,200);
}
   
void back() {
  calcWave();
  renderWave(color(75,142,255,150),1);
  renderWave(color(92,216,149,150),-1);
  renderWave(color(231,234,85,150),-0.5);
  renderWave(color(60,222,199,150),0.5);
}
void calcWave() {
  // Increment theta (try different values for 'angular velocity' here
  theta += 0.02;
   
  // For every x value, calculate a y value with sine function
  float x = theta;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}
   
void renderWave(color c1, float dudly) {
  noStroke();
  fill(c1);
  // A simple way to draw the wave with an ellipse at each location
  for (int x = 0; x < yvalues.length; x++) {
    rect(x*xspacing, 140+yvalues[x]*dudly, 14, 3);
  }
}
  
void mainPage() {
    rectMode(CENTER);
  
     
  fill(255,255,255);
  rect(width/2,height/2+10,width-150,height-90);
  buttonOne();
    
  fill(0);
  textFont(fonty,60);
  text("Thanks for saving!",width/2-width*0.25-35,120);
}
   
   
void animalValues(float x, float y) {
  textFont(fonty,30);
  text("##### Animal",x,y);
} 
 
void percentiles(float x, float y) {
  textAlign(CENTER);
  textFont(fonty,35);
  text("Percentiles",x,y);
  textFont(fonty,25);
  text("Before: ##%",x,y+30);
  text("After: ##%",x,y+60);
  text("Average: ##%",x,y+90);
  text("Goal: ##%",x,y+120);
  textAlign(LEFT);
}
 
void buttonOne() {
  rectMode(CENTER);
  fill(0);
  textFont(fonty,28);
  rect(width/2, height*0.85, 150,75);
  fill(255);
  textAlign(CENTER);
  text("See how much you've helped",width/2,height*0.85-10);
  textAlign(LEFT);
  text("Here!",width/2-73, height*0.85+10);
}

