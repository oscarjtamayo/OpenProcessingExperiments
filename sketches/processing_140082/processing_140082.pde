
import gifAnimation.*;

float diameter;
float diameter2;
float angle = 0;
float angle2 = 0;
float colour = 0;

void setup() {
 
  size(900, 900);
  diameter = 300;
  diameter2= 400;
  //blendMode(ADD);
  colorMode(HSB);
  smooth(16);
  background(0);
  noStroke();
 
}

void draw() {

colour += 0.1;

 //if(frameCount%10 == 0)
// {

  float sinw = (sin(angle) * diameter/2) + width/2;
  float sinh = (sin(angle + PI/2) * diameter/2) + height/2;
  float sinw2 = (sin(angle2) * diameter2/2);
  float sinh2 = (sin(angle2 + PI/2) * diameter2/2);
 
   //fill(255, 204);  //white
   fill(colour,255,255);
   ellipse(sinh + sinh2 , sinw + sinw2, 50, 50);
 //}

  angle2 += PI/15;
  angle += PI/60.3;
 
  if(colour > 255)
{
  colour = 0;
}
}



