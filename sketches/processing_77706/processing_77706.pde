
int x = 100;
int y = 300;
int dir=RIGHT;
boolean gameover=false;
boolean compgameover=false;
int compx = 500;
int compy = 300;
int compdir=LEFT;


void setup()
{
  size(600, 600);
  background(0);
  frameRate(999);
}
void draw()
{
  if (gameOver == true)
  {
    fill(255, 0, 0);
    textSize(50);
    text("GAME OVER", 100, 250);
  }
  else if (compgameOver == true)
  {
    fill(random(255), random(255), random(255));
    textSize(50);
    text("YOU WIN", 140, 250);
  }
  else 
  {
    shenbot();
    human();
  }
}

void keyPressed()
{
  if (key == 'a')
  {
    dir = LEFT;
  }
  else if (key == 'd')
  {
    dir = RIGHT;
  }
  else if (key == 'w')
  {
    dir = UP;
  }
  else if (key == 's')
  {
    dir = DOWN;
  }
}

void human()
{

  if (get(x, y)!=color(0))
  {
    gameover=true;
  }

  stroke(59, 194, 216); //Player Color
  point(x, y);

  if (dir==RIGHT)
  {
    x++;
  }
  else if (dir==LEFT)
  {
    x--;
  }
  else if (dir==UP)
  {
    y--;
  }
  else if (dir==DOWN)
  {
    y++;
  }
}

void shenbot()
{
 if (get(compx, compy) != color(0))
  {

    textSize(50);
    text("Bot Lose", 150, 300);
    gameover= true;
  }
 
  stroke(206, 124, 56);
  point(compx, compy);

   
  if (compdir==RIGHT)
  {
    compx++;
    if (get(compx+1, compy)!=color(0))
    {
      compdir = UP;
    }
  }
  else if (compdir==LEFT)
  {
    compx--;
    if (get(compx-1, compy)!=color(0))
    {
      compdir = DOWN;
    }
  }
  else if (compdir==UP)
  {
    compy--;
    if (get(compx, compy-1)!=color(0))
    {
      compdir = LEFT;
    }
  }
  else if (compdir==DOWN)
  {
    compy++;
    if (get(compx, compy+1)!=color(0))
    {
      compdir = RIGHT;
    }
  }
}
