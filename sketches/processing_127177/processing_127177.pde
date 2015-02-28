
/* @pjs preload="apple.png"; */

PImage img;
int x, y;
int c;
int i;


void setup() {
  
  size(450, 450);
  background(255);
  tint(0);  
  
  i = 0;
  c = 255;
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);
  
  noStroke();
  fill(170);
  rectMode(CENTER);
  rect(180, 230, 60, 120);
  rect(220, 280, 150, 70);
  rect(260, 220, 60, 60);
  
  fill(255);
  noStroke();
  quad(110, 210, 110, 260, 190, 260, 190, 210);
  quad(230, 290, 230, 210, 300, 210, 300, 290);
  
  
  stroke(0);
  strokeWeight(3);
  line(130, 240, 250, 240);
  line(160, 240, 160, 330);
  line(200, 240, 200, 330);
  line(200, 300, 280, 300);
  line(280, 300, 280, 200);
  line(280, 200, 240, 200);
  line(280, 180, 240, 180);
  line(130, 260, 180, 260);
  line(180, 260, 180, 330);
  line(150, 170, 150, 220);
  line(150, 220, 180, 220);
  line(180, 220, 180, 200);
  line(180, 200, 200, 200);
  line(200, 200, 200, 180);
  line(240, 280, 240, 330);
  line(240, 330, 290, 330);
  
  fill(0);
  quad(120, 230, 120, 280, 150, 280, 150, 230);
  quad(150, 320, 150, 330, 210, 330, 210, 320);
  quad(250, 310, 250, 340, 280, 340, 280, 310);
  quad(290, 310, 290, 340, 300, 340, 300, 310);
  quad(210, 250, 210, 280, 270, 280, 270, 250);
  quad(130, 180, 130, 200, 160, 200, 160, 180);
  quad(220, 170, 220, 230, 240, 230, 240, 170);
  quad(280, 170, 280, 190, 300, 190, 300, 170);
  
  
  fill(255);
  quad(125, 240, 125, 260, 140, 260, 140, 240);
  quad(230, 190, 230, 230, 240, 230, 240, 190);
  
  
  stroke(0);
  strokeWeight(3);
  fill(255);
  ellipse(150,163,15,15);
  ellipse(140,300,20,20);
  ellipse(200,168,25,25);
  ellipse(260,240,20,20);
  ellipse(170,168,10,10);
  ellipse(170,180,10,10);
  ellipse(170,192,10,10);

  rectMode(CENTER);
  rect(200, 300, 15, 15);
  rect(222, 300, 15, 15);
  rect(160, 340, 10, 10);
  rect(180, 340, 10, 10);
  rect(200, 340, 10, 10);
  rect(315, 300, 10, 40);
  
  
  for(int i=210; i<300; i+=15) {    
  ellipse(290, i, 10, 10);
}
  
  
  img = loadImage("apple.png");
  image(img, 100, 70, 249, 300);
}

 
void mouseMoved() {
  tint(0, 0, 0, c);
  c -= 1;
  if(c < 170) {
    c = 255;
  }
}



