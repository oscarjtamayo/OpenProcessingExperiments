
//Processing Composition

final int compositionSideLength = 400;
final int sideDivisor = 10;
final int stepsToClear = 30;
int offset = 0;

int colorIdx = 0;
SteppableColor[] theColors;

void setup() {
  
  theColors = new SteppableColor[100];
  
  for (int i = 0; i < theColors.length; ++i) { 
    SteppableColor theColor;
    if (i == 0) theColor = new SteppableColor(0x6BBCDC);
    else {
      SteppableColor oldColor = theColors[i-1];
      oldColor.increment(2);
      theColor = new SteppableColor(oldColor.getColor());
    } 
    theColors[i] = theColor;
  }
  
  size(400,400);
  smooth(); //anti-alias
  background(255);
  noStroke();
  frameRate(10);
}



color randomColor() {
  
 color colorToAverage = theColors[colorIdx].getColor(); 
  
 int r = round((red(colorToAverage) + random(0xFF)) / 2.f);
 int g = round((green(colorToAverage) + random(0xFF)) / 2.f);
 int b = round((blue(colorToAverage) + random(0xFF)) / 2.f);
 
 return color(r,g,b);
}

void draw() {
 
  int boxSize = compositionSideLength / sideDivisor;
  
  fill(0xFF, 120);
  rect(0, 0, compositionSideLength, compositionSideLength);
 
  for (int i = 0; i < sideDivisor; ++i) {
    for (int j = 0; j < sideDivisor; ++j) {
       theColors[colorIdx].increment();
       fill(randomColor());
       int randomInset = round(random(0.f,boxSize/2.f));
       int cornerRadius = round(random(0.f,boxSize/2.f));
       int xPos = ((i * boxSize) + randomInset + offset) % compositionSideLength;
       rect(xPos, (j * boxSize)+randomInset, boxSize - (2*randomInset), boxSize - (2*randomInset), cornerRadius);
    }
  }
 
 
  offset = (offset + 2) % boxSize;
  
  colorIdx = (colorIdx + 1) % theColors.length;
  
}
class SteppableColor {
  color _color;

  SteppableColor(color startColor) {
    _color = startColor;
  }

  void increment(int amt) {
    float r = (red(_color) +amt) % 256;
    float g = (green(_color) + amt) % 256;
    float b = (blue(_color) + amt) % 256;
    _color = color(r, g, b);
  }

  void increment() {
    increment(1);
  }
  
  color getColor() {
    return _color;
  }
}



