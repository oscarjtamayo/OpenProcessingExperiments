
//declaration
Ball myBall;
int timer = 0;
Boolean screenSaver = true;
//moving balls with oop

int NUM_BALLS = 90;

//create an empty array
//called myBalls
//that contain NUM_BALLS objects of
//the class Ball
Ball[] myBalls = new Ball[NUM_BALLS];

void setup()
{
  size(500, 500);
  smooth();
  noStroke();
  background(0);

  //create an instance
  /*
  myBall = new Ball();
  myBall2 = new Ball();
  myBall2.speedX = -1;
  */

  //population

  for (int i = 0; i<NUM_BALLS;i++)
  {
    rotate(random(2*PI));
    myBalls[i] = new Ball();
    myBalls[i].posX = random(0,width);
    myBalls[i].posY = 0;
    myBalls[i].myDiameter = myBalls[i].posX/180.0;
    myBalls[i].speedX = myBalls[i].posX/250;
    myBalls[i].update();
  }


  
}

void draw()
{
  if (screenSaver)
  {
    background(0);
  }
  fill(255);
  //myBalls[i].myDiameter = 3 + myBalls[i].posX/180.0;
  //myBalls[i].speedX = 1 + myBalls[i].posX/140.0;
  
  //myBall.update();
  

  //cos waves
  /*
  for(int i = 0; i<NUM_BALLS;i++)
   {
   myBalls[i].update();
   myBalls[i].posY += cos(frameCount/20.0);
   }
   */
   

  for (int i = 0; i<NUM_BALLS;i++)
  {
    pushMatrix();
      translate(250,250);
      rotate(i);
      myBalls[i].myDiameter = 1 + myBalls[i].posX/80.0;
      myBalls[i].speedX = 1 + myBalls[i].posX/120.0;
      myBalls[i].update();
    popMatrix();
  }
  
  //object.method
  /*fill(255);
   myBall.posY = 250 + 100*cos(frameCount/20.0);
   myBall2.posY = 250 + 100*sin(frameCount/20.0);
   myBall.update();
   fill(255,0,0);
   myBall2.update();
   */
   if ((mouseX != pmouseX) | (mouseY != pmouseY))
  {
   background(255);
   screenSaver = false;
   timer = 0;
  }
  timer += 1;
  if (timer > 120)
  {
   screenSaver = true; 
  }
}

class Ball
{
  //properties
  float myDiameter = 10;
  float posX = 250;
  float posY = 250;
  float speedX = 1;

  //method
  void update()
  {
    ellipse(posX, posY, myDiameter, myDiameter);
    posX += speedX;
    if (posX > width+myDiameter)
    {
      posX = - myDiameter/2.0;
    }
  }
  
}

