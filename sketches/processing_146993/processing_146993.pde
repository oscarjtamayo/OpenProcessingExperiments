
float raggio1 = 144;
float raggio2 = 72;
float raggio3 = 36;
float raggio4 = 18;

float passoAngolo1 = PI/937;
float passoAngolo2 = PI/177;
float passoAngolo3 = PI/31;
float passoAngolo4 = PI/9;

float drawRate = 1;
float drawGray = 0;
float drawGrayStep = 0.05;

void setup()
{
  size(720,720);
//  stroke(0,40);
  background(255);
}

void draw () 
{
  float c1x = 360;
  float c1y = 360;
  
  float angolo1 = frameCount*passoAngolo1;
  float c2x = c1x + cos(angolo1)*raggio1;
  float c2y = c1y + sin(angolo1)*raggio1;
  
  float angolo2 = frameCount*passoAngolo2;
  float c3x = c2x + cos(angolo2)*raggio2;
  float c3y = c2y + sin(angolo2)*raggio2;
  
  float angolo3 = frameCount*passoAngolo3;
  float c4x = c3x + cos(angolo3)*raggio3;
  float c4y = c3y + sin(angolo3)*raggio3;
  
  float angolo4 = frameCount*passoAngolo4;
  float c5x = c4x + cos(angolo4)*raggio4;
  float c5y = c4y + sin(angolo4)*raggio4;
  
  if ((drawGrayStep>0 && drawGray>=256) || (drawGrayStep<0 && drawGray<0)) {
    drawGrayStep = -drawGrayStep;
  }
  drawGray += drawGrayStep;

  stroke(drawGray,60);
  line(c2x,c2y, c3x,c3y);
  line(c3x,c3y, c4x,c4y);
  line(c4x,c4y, c5x,c5y);

  if (drawRate < 120) {
    drawRate *= 1.07;
    frameRate(drawRate);
  } 
}

void mouseClicked()
{
  raggio1 = random(310)+10;
  raggio2 = random(320-raggio1)+10;
  raggio3 = random(330-raggio1-raggio2)+10;
  raggio4 = random(340-raggio1-raggio2-raggio3)+10;

  passoAngolo1 = random(0.001,0.2);
  passoAngolo2 = random(0.001,0.2);
  passoAngolo3 = random(0.001,0.2);
  passoAngolo4 = random(0.001,0.2);
  
  background(255);
  drawRate = 1;
  drawGray = 0;
}
