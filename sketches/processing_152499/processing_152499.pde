
/*
 * Creative Coding
 * Week 3, 04 - spinning top: curved motion with sin() and cos()
 * by Indae Hwang and Jon McCormack
 * tweaked by Neroli Wesley
 * Copyright (c) 2014 Monash University
 *
 * This sketch is the first cut at translating the motion of a spinning top
 * to trace a drawing path. This sketch traces a path using sin() and cos()
 *
 * 
 */

float x, y;      // current drawing position
float dx, dy;    // change in position at each frame
float radius1;       // radius for the moving hand

void setup() {
  size(500, 500);

  // initial position in the centre of the screen
  x = width/2;
  y = height/2;

  // dx and dy are the small change in position each frame
  dx = random(-1, 1);
  dy = random(-1, 1);
  background(0);      // black
}


void draw() {
  // blend the old frames into the background so they fade away
  //blendMode(BLEND); // blend doesn't work in javascript so I've removed it
  fill(0, 1); // a very transparent black
  rect(0, 0, width, height); // draw a transparent black rectangle over the whole sketch to fade it out over time
  
  // calculate new positions of our (now green) invisible point
  x += dx;
  y += dy;
  // draw blobs in green so we can see where it is
  fill(#DEA636);
  //ellipse(x,y,15,15); // the top moves in a linear fashion
  fill(#B76614);
  float cometSize = random(10)+30;
  //ellipse(x,y,cometSize,cometSize); // the top moves in a linear fashion
  //line (x,y,(QUARTER_PI*y),random(QUARTER_PI*x));
  
  // when the green blob gets too close to the edge bounce it off in another direction
  float max = 2;
  float min = 0.5;
  //When the shape hits the edge of the window, it reverses its direction and changes velocity
  if (x > width-100 || x < 100) {
    dx = dx > 0 ? -random(min, max) : random(min, max);
  }
  if (y > height-100 || y < 100) {
    dy = dy > 0 ? -random(min, max) : random(min, max);
  }
  
  // create point 1 to rotate around the (now green) invisible point at a distance of 100 
  // radius1 is an ever increasing number based on frame count 
  // so that gives you smooth increase of angle 
  // spinning around the (now green) invisible point 
  // with point1X,by in red you can see it is always 100 from the (now green) invisible 'top'
  
  radius1 = radians(frameCount); // frameCount is an ever increasing number
  //println(radius1);
  float point1X = x + 100 * sin(radius1);
  float point1Y = y + 100 * cos(radius1);
  // put a red blob there so we can see it
  fill(255,0,0);
  //ellipse(point1X,point1Y,2,2);
  // println(point1X/100); // just to see what it is

  //fill(180); // don't know what this does so I took it out
  
  // create point 2 to rotate around the red point 1 at a gradually varying but constrained distance
  // radius1 is an ever increasing number based on frame count 
  // radius2 is based on radius1 so they are related (?)
  // so that gives you smooth increase of angle 
  // spinning around point 1

  //float radius2 = 100 * sin(radius1*0.1);
  float radius2 = 100 * cos(radius1*0.1);
  float point2X = point1X + radius2 * sin(radius1*3); // 3 times the speed?
  float point2Y = point1Y + radius2 * cos(radius1*1);
  
  // connect point 1 and point 2 together with a blue, transparent line
  stroke(0,0,255, 30); // without this stroke you can't see the blobs - it lightens them I think
  line(point1X, point1Y, point2X, point2Y);
  
  
  // make another line depending on distance between the points
  float radius3 = 100 * sin(radius1*0.2);
  //float radius3 = 100 * cos(radius1*0.1);
  float point3X = point1X + radius3 * sin(radius1*3); // 3 times the speed?
  float point3Y = point1Y + radius3 * cos(radius1*4);
  
  float dist2to3 = dist(point2X,point2Y,point3X,point3Y);
  if (dist2to3 < 50) {
  // connect point 1 and point 2 together with a white, transparent line
  stroke(#E088D7, 80); // without this stroke you can't see the blobs - it lightens them I think
  line(point1X, point1Y, point2X, point2Y);
  // make the blobs blue so we can see it
  //fill(0,0,255);
  //ellipse(point2X, point2Y, 2, 2);
  }

}



