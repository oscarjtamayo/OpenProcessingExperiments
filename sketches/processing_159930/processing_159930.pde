
void setup(){
  size (475, 420);
noStroke();
}

void draw(){
background((int)random(0,255), (int)random(0,255), (int)random(0,255), 255);
  fill((int)random(0,255), (int)random(0,255), (int)random(0,255), 255);
  rect (100, 50, 50, 200);
  rect (100, 250, 150, 50);
  rect (250, 125, 50, 175);
  rect (175, 50, 50, 175);
  rect (225, 50, 150, 50);
  rect (325, 100, 50, 200);
fill((int)random(0,255), (int)random(0,255), (int)random(0,255), 255);
textSize(32);
text("Dead Duck Gang", 100, 350);
}
