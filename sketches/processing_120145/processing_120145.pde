
void setup()
{
  size(500, 500);
 background(0);
}
void draw()
{
 background(255);
   
  float sec = map(second(), 0, 60, 0, 360);
  float min = map(minute(),0,60,0,360);
  float std = map(hour(),0,12,0,360);
   
 //ziffernblatt
  translate(width/2, height/2);
   
  fill(0);
for(int i=0;i<360;i+=30){
 pushMatrix();
 rotate(radians(i));
 translate(0,-200);
  rectMode(CENTER);
  rect(0,0,20,20);
  popMatrix();
   
}
   
  fill(0);
  noStroke();
for (int i=0; i<360; i+=90) 
{
pushMatrix();
rotate(radians(i));
translate(0, -200);
rect(0,0, 50,50);
popMatrix();
 
}
//sekundenzeiger
  pushMatrix();
  rotate(radians(sec)); // um i rotieren
  translate(0, -200); //um radius verschieben
frameRate(1);
fill(50,255,200);
rect(0, 0, 15, 15);
  popMatrix();
 
//Quadrat groß   
noFill();
stroke(0);
rect(0,0,400,400);

//Stundenzeiger
pushMatrix();
rotate(radians(std));
translate(0,-60);
rectMode(CENTER);
rect(0,0,30,120);
popMatrix();
 
// minutenzeiger
pushMatrix();
rotate(radians(min));
translate(0,-90);
rectMode(CENTER);
rect(0,0,20,180);
popMatrix();
resetMatrix();

fill(0);
//Quadrat klein
rect(width/2,height/2,50,50);
 
}

