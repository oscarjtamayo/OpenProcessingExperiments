
/*
 * Creative Coding
 * Week 2, 04 - Psycho Cloxx
 * 
 */
 
int circleNumber;

void setup() {
  size(600, 600);
  background(100);
  rectMode(CENTER);
  ellipseMode(CORNER);

  colorMode(HSB, 100);
  noStroke();
}


void draw() {
 // background(100);
  noStroke();

  int num = 5;
  int margin = 80;

  float gutter = 0; //distance between each cell
  float cellsize = ( width - (2 * margin) - gutter * (num - 1) ) / (num - 1);

  circleNumber = 0; // counter

  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {
      ++circleNumber;

      float tx = margin + cellsize * i + gutter * i;
      float ty = margin + cellsize * j + gutter * j;
      if (circleNumber % 2 == 0) {
        movingCircle2(tx, ty, cellsize, circleNumber * TWO_PI * millis() / 60000.0);
      } else {
        movingCircle(tx, ty, cellsize, circleNumber * TWO_PI * millis() / 60000.0);
      }
    }
  }
}


void movingCircle2(float x, float y, float size, float angle) {
  angle = TWO_PI - angle;
  // calculate endpoint of the line
  float tempX = x + (size / 2) * sin(angle);
  float tempY = y + (size / 2) * cos(angle);

  stroke(0);
  strokeWeight(5);
  fill(circleNumber * 4, 100, 100);
  rect(x, y, size, size); // rectangle

  stroke(100, 0, 0);
  line(x, y, tempX, tempY); // black line
}

void movingCircle(float x, float y, float size, float angle) {

  // calculate endpoint of the line
  float tempX = x + (size / 2) * sin(angle);
  float tempY = y + (size / 2) * cos(angle);

  stroke(0);
  strokeWeight(5);
  fill(100 - circleNumber * 4, 100, 100);
  ellipse(x, y, size, size); // circle

  stroke(100, 0, 0);
  line(x, y, tempX, tempY); // black line
}



