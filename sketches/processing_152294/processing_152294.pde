
/*
 * Creative Coding
 * Week 3, 06 - rule-based system
 * by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 *
 * This sketch draws a series of moving Elements (circles) according to the following rules:
 * - start from a random position and move in a constant random direction
 * - if the point reaches the boundary of the screen move in the opposite direction with new velocity
 * - if the circles intersect then draw a line connecting their centres, colouring the line based on the circle being odd or even
 */

float[] x;      // position
float[] y;
float[] xInc;   // change per frame
float[] yInc;
int numArray;   // number of elements

float proximity;  // if distance between elements < proximity then draw a line between them

void setup() {
  size(500, 500);

  numArray = 30;

  // allocate arrays
  x= new float[numArray];
  y= new float[numArray];
  xInc= new float[numArray];
  yInc= new float[numArray];

  proximity = 100;   // influence distance

  // random starting position and direction
  randomSeed(hour() + minute() + second() + millis());
  for (int i=0; i<numArray; i++) {
    x[i] = random(width);
    y[i] = random(height);
    xInc[i] = random(-1, 1);
    yInc[i] = random(-1, 1);
  }

  strokeWeight(2);
}

void draw() {

  //background(255);
  rectMode(CORNERS);
  fill(255,20);
  noStroke();
  rect(0,0,width,height);

  // iterate over each point
  for (int i=0; i<numArray; i++) {

    x[i] += xInc[i];
    y[i] += yInc[i];

    // bounce off the sides of the window
    if (x[i] > width || x[i] < 0) {
      xInc[i] = xInc[i] > 0 ? -random(1) : random(1);
    }

    if (y[i] > height || y[i] < 0 ) {
      yInc[i] = yInc[i] > 0 ? -random(1) : random(1);
    }

    //drawElement(x[i], y[i], xInc[i], yInc[i]);
  }

    noFill();
  for (int i=0; i<numArray; i++) {
    for (int j=0; j<i; j++) {
      float ddist = dist(x[i], y[i], x[j], y[j]  );
      if (ddist < proximity) {
        if (i%2 == j%2) {
          stroke(255, 255, 0);
        } 
        else {
          stroke(255, 0, 0);
        }
        ellipseMode(CORNERS);
        line(x[i], y[i], x[j], y[j]  );
      }
    }
  }
}

void drawElement(float x, float y, float dx, float dy ) {

  // draw the point in red
  noFill();
  stroke(255, 50, 0, 2);
  point(x, y);

//  // draw an arrow in the current direction of travel
//  stroke(0, 100);
//  float endX = x + (dx*20);
//  float endY = y + (dy*20);
//  float arX = x + (dx*15);
//  float arY = y + (dy*15);
//  line(x, y, endX, endY);
//  line(endX, endY, arX + (dy * 5), arY - (dx * 5));
//  line(endX, endY, arX - (dy * 5), arY + (dx * 5));


  // draw the boundary of proximity
  //stroke(0, 1);
  ellipse(x, y, proximity, proximity);
}

void keyPressed() {
    if (key == 's') saveFrame("yourName.jpg");
}

