
float x = 0;//variable for the first x value
float y = 0; //variable for the first y value
float vx = 4;//variable for the second x value
float vy = 5; //varible for the second y value
float s=20; //has the scoreboard
 
//Setup
 void setup()
{
  size(500, 300);
  smooth();
  frameRate(40);
}
//Draw
 void draw()
{
 background (0, 250, 0);
   pushMatrix();//pushes the ball
  {
    //the ball
    strokeWeight(3);
    stroke(255);
    ellipse (x, y, s, s);
  //the conditional to bounce
    x = x+vx;
 if (x>=width-s/2-10)//half the diameter of the ball and paddle width is subtracted to bounce on it
    {
      vx = -4; //that's the second x value
    }
 y = y+vy;
 if (y>=height-s/2)
    {
      vy = -5;//that's the second y value
    }
    if (y<=s/2)
    {
      vy=5; //second y value
    }   
  if (x-s/2 == 10 && y >= mouseY && y<= mouseY+50) //to bounce palette Y anywhere between 10 and 50 , but with X = 10 ( width of the blade )
    {
      vx = 5; //second x value
    }
    if (x<0)
    {
    }
    popMatrix();
       }
  pushMatrix(); //scroll the ball to play
    {
    rect(0, mouseY, 10, 50);
    rect(width-10, y, 10, 50);
    popMatrix(); //pops the ball  
    }  
}
