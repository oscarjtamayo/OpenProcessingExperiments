
void setup() {
  size(400, 400, P3D);
  colorMode(HSB, 360);
  background(360);
  noStroke();
  rectMode(CENTER);

frameRate(40);
}

void draw() {
  int angle=10;
  int x=5;
  background(360);
  translate(200, 200);

  for (int i=0; i<36; i++) {  
    fill(i*10, 360, 360);









    rotateX(radians(mouseX));
    pushMatrix();

    rotate(radians(i*angle));
    translate(180, 0);


    rect(0, 0, 10, 10);

    popMatrix();
    rotateY(radians(mouseY));
    pushMatrix();
    rotateX(random(0,200));
    rotate(radians(i*angle));
    translate(90, 0);
    rect(0, 0, 10, 10);
    translate(10, 0);
    rect(0, 0, 10, 10);
    translate(20, 0);
    rect(0, 0, 10, 10);
    translate(5, 0);
rect(0, 0, 10, 10);
    popMatrix();
  }
}


