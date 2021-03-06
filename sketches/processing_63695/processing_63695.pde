
float rx, ry;    // rectangle x- and y-coordinate
float rd = 100;  // rectangle width

float ex, ey;    // ellipse x- and y-coordinate
float ed = 106;  // ellipse diameter

void setup() {
  size(640, 360);
  smooth();

  // Set the x- and y-coordinates for the rectangle
  rx = width * 0.33 - rd/2;
  ry = height * 0.5 - rd/2;

  // Set the x- and y-coordinates for the ellipse
  ex = width * 0.66;
  ey = height * 0.5;
}

void draw() {
  background(102);


  ellipse(mouseX, ey, ed, ed);
  ellipse(mouseX/2, ey, ed, ed);
  ellipse(mouseX*2, ey, ed, ed);



  rect(mouseX, ry, rd, rd);
  rect(mouseX+20, ry, rd, rd);
  rect(mouseX-20, ry, rd, rd);
}



