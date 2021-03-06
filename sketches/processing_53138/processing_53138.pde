
// assignment 7
// Mi Jin Hwang copyright 2012

// drag mouse for an elephant to hit heart!

float eX, eY;
float hX, hY;
float eXSpeed, eYSpeed;
float hXSpeed, hYSpeed;
PImage elephant, heart;
int love;

void setup(){
size (500, 400);
background (random (185), random (185), random (234));
smooth ();

hX = random(0,width);
hY = random(0,height);
eX = random(0,width);
eY = random(0,height);
eXSpeed = random(-3,3);
eYSpeed = random(-3,3);
hXSpeed = random(-3,3);
hYSpeed = random(-3,3);
love = 0;

elephant = loadImage ("elephant.png");
imageMode(CENTER);
heart = loadImage ("heart.png");
imageMode(CENTER);
}

void draw()
{
  txt();
  drawH();
  moveH();
  drawE();
  moveE();
  love();
  slowDown();
}

void txt()
{
  textSize(15);
  fill(255);
  text("NUMBER OF CRUSHES: " + love, 240, 360);
  text("TIME: "+ (millis()/1000), 240, 380);
}

void drawH()
{
image(heart, hX, hY, 50, 50);
}

void moveH()
{
 hX = hX + hXSpeed;
 hY = hY + hYSpeed;
 if(hX > width+25)
 {
   hX = -25;
 }
 else if(hX < -25)
 {
   hX = width+25;
 }
 else if(hY < -25)
 {
   hY = height+25;
 }
 else if(hY > height+25)
 {
   hY = -25;
 }
 
}

void drawE()
{
image(elephant,eX,eY,50,50);
}
void moveE()
{
 eX = eX + eXSpeed;
 eY = eY + eYSpeed;
 if(eX > width+25)
 {
   eX = -25;
 }
 else if(eX < -25)
 {
   eX = width+25;
 }
 else if(eY < -25)
 {
   eY = height+25;
 }
 else if(eY > height+25)
 {
   eY = -25;
 }
 
}

void mouseDragged()
{
  if (mouseX>pmouseX)
  {
    eXSpeed = eXSpeed + 0.1;
  }
  else if (mouseX <pmouseX)
  {
    eXSpeed = eXSpeed - 0.1;
  }
  else if (mouseY > pmouseY)
  {
    eYSpeed = eYSpeed + 0.1;
  }
  else if (mouseY < pmouseY)
  {
    eYSpeed = eYSpeed - 0.1;
  }
}

void slowDown()
{
if(eXSpeed>4)
{
  eXSpeed = 2;
}
else if(eXSpeed<-4)
{
  eXSpeed = -2;
}
}

void love()
{
float distance = dist(eX,eY,hX,hY);
if(distance<25)
{
 love++;
 eX = random(0,width);
 eY = random(0,height);
 hX = random(0,width);
 hY = random(0,height);
 eXSpeed = random(-4,4);
 eYSpeed = random(-4,4);
 hXSpeed = random(-4,4); 
 hYSpeed = random(-4,4);
 textSize(30);
  fill (random (255), random (255), random (255));
  strokeWeight (30);
 text ("JUST PLAYING HARD TO GET", 25, 200);
}
}

