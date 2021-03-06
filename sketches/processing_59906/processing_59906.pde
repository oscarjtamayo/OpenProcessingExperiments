
/*

 ///References:
 processing.org: reference on noiseVal
 mode 1: book page 298 example,
 book page 330: Typography 2: motion example
 
 */
 
 
 
PFont font;
String[] words = {
  "I was", "in this", "prematurely", "air-conditioned", "supermarket", " "
};

float inc = 0.05;
int density = 4;
float znoise = 9.0;

float angle = 0.0;
float noiseScale = 0.02;

int i, j, l, w=110, whichWord =0;


void setup()
{
  size(850, 200, P3D);
  noStroke();
  background(150);
  cursor(CROSS);
  noFill();
  //noCursor();
  //frameRate (15);
  font = loadFont("Garamond-48.vlw");
  textFont(font);
  textAlign(CENTER);
}

void draw()
  {
    float xnoise = 0.0;
    float ynoise = 0.0;
    textFont (font, 80);
    frameRate(20);
    for (int y=0; y< height; y+=density) {
      for (int x=0; x<width; x += density) {
        float n =noise(xnoise, ynoise, znoise)*420;
        fill(n);
        ellipse(x, y, density, density);
        xnoise += inc;
      }
      xnoise = 0;
      ynoise += inc;
    }
    znoise += inc;

    whichWord++;
    if (whichWord == words.length) {
      whichWord = 0;
    }
    text (words[whichWord], width/2, height/2+25);
  }


