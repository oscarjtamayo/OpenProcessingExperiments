
class Asteroid
{
  float x = 100;
  float y = -100;
  float radius = 20;
  float speed = random(1, 5);
}

class Ship
{
float x = 250; 
float y = 600; 
float w = 50; 
float h = 25;
float speed = 5;
}

boolean isLeftDown = false;
boolean isRightDown = false;

//Asteroid asteroid1;
Asteroid[] asteroids = new Asteroid[8];
Ship player = new Ship();

void setup()
{
  size (500, 700);
  
  for (int i = 0; i < asteroids.length; i += 1)
  {
  asteroids[i] = new Asteroid();
  
  float r = random(500);
  asteroids[i].x = r;

  }
  
}




void draw()
{
  background(0);
  
  if (isRightDown == true)
  {
  player.x += player.speed;
  }
  
 if (isLeftDown == true)
  {
  player.x -= player.speed;
  } 
  
  rect (player.x, player.y, player.w, player.h);
  
  for (int i = 0; i < asteroids.length; i += 1)
  {
  asteroids[i].y += 1;
  
  if (rectRectIntersect (player.x, player.y, player.x + player.w, player.y + player.h,
      asteroids[i].x, asteroids[i].y, asteroids[i].x + asteroids[i].radius, asteroids[i].y + asteroids[i].radius))
  
  ellipseMode(CORNER);
  ellipse(asteroids[i].x, asteroids[i].y, asteroids[i].radius, asteroids[i].radius);
  }
}




void keyPressed()
{
if (key == CODED)
  {
    if (keyCode == LEFT)
    {
    isLeftDown = true;
    }
    if (keyCode == RIGHT)
    {
    isRightDown = true;
    }
  }
}


void keyReleased()
{
if (key == CODED)
  {
    if (keyCode == LEFT)
    {
    isLeftDown = false;
    }
    if (keyCode == RIGHT)
    {
    isRightDown = false;
    }
  }
}

boolean rectRectIntersect(float left, float top, float right, float bottom,
                          float otherLeft, float otherTop, float otherRight, float otherBottom) 
                          {
                          return !(left > otherRight || right < otherLeft || top > otherBottom 
                          || bottom < otherTop);
                          }





