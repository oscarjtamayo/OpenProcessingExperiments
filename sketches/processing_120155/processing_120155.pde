
class MouseRotatingCar extends SpriteObject
{
  int frameRow;
  int frameColumn;
  int frameWidth;
  int frameHeight;
  int startFrame;
  int endFrame;
  float currentFrame;
  boolean loop = true;
  float frameSpeed = 12.0;
  PImage spriteSheet;

  MouseRotatingCar(String filename)
  {
    super(filename);
    this.spriteSheet = this.img;
  }
  
  void setAnimation(int start, int end, boolean looping)
  {
    this.startFrame = start;
    this.endFrame = end;
    this.currentFrame = this.startFrame;
    this.loop = looping;
  }
   
  void lookAt(float otherX, float otherY)
  {
    this.rotation = degrees(atan2(otherY-this.y, otherX-this.x));
    this.directionX = cos(radians(this.rotation));
    this.directionY = sin(radians(this.rotation));
  }
   
  void update()
  {
    this.lookAt(mouseX, mouseY);
    this.x += (up - down) * this.directionX * this.speed;
    this.y += (up - down) * this.directionY * this.speed;
    // Increment currentFrame by the frameRate related to current fps)
    this.currentFrame += (this.frameSpeed / frameRate);
    if ((int)this.currentFrame > this.endFrame)
    {
      if (this.loop == true)
      {
        this.currentFrame = this.startFrame;
      }
      else
      {
        this.currentFrame = this.endFrame;
      }
    }
     
    int colCount = this.spriteSheet.width / this.frameWidth;
    this.frameColumn = (int)this.currentFrame ;
    if (colCount > 0)
    {
      this.frameColumn =(int)((int)this.currentFrame % colCount);
      this.frameRow = (int)(this.currentFrame / colCount);
    }
    this.img = this.spriteSheet.get(
      this.frameColumn * this.frameWidth,
      this.frameRow * this.frameHeight,
      this.frameWidth,
      this.frameHeight);

  } 
}
  
// Here we actually create the variable "car" of type TopDownRotater which we will access by name in the rest of the code.
MouseRotatingCar car;
  
// We use these variables both to keep track of whether a key is pressed down
// and also to store the related direction of the keys
float down = 0;
float up = 0;
 
// Bullet Class
class Bullet extends SpriteObject
{
  Bullet(String filename)
  {
    super(filename);
  }
    
  void update()
  {
    this.rotation = degrees(atan2(this.directionY, this.directionX));
    this.y += this.directionY * this.speed;
    this.x += this.directionX * this.speed;
  }
}
 
int bulletCount = 10;
Bullet[] b = new Bullet[bulletCount];
int bulletIndex = 0;
 
   
void setup()
{
  size(800, 800);
    
  car = new MouseRotatingCar("link.png");
  car.x = width/2;
  car.y = width/2;
  car.frameWidth = 450/5;
  car.frameHeight = 360/4;
  car.startFrame = 1;
  car.endFrame = 4;
  car.frameSpeed = 6.0;    
  // Set the initial direction to be down. Directions should always be of 1 length.
  // Here it is 1 length because we are just pointing down 1 in the y.
  car.directionX = 0;
  car.directionY = 1;
    
  // Speed of forward and back movement (how many pixels to move each frame)
  car.speed = 3;
    
  for (int i = 0; i < bulletCount; i += 1)
  {
    b[i] = new Bullet("ball.png");
    b[i].x = -1000;
    b[i].y = -1000;
    b[i].s = 0.1;
  }
 
}
  
void draw()
{
  // Clear the screen
  background(100);
 
  car.update();
  car.render();
   
  for (int i = 0; i < bulletCount; i += 1)
  {
    b[i].update();
    b[i].render();
  }
}
 
void mouseReleased()
{
  if (mouseButton == LEFT)
  {
    b[bulletIndex].x = car.x;
    b[bulletIndex].y = car.y;
    b[bulletIndex].speed = 10;
    b[bulletIndex].directionX = car.directionX;
    b[bulletIndex].directionY = car.directionY;
    bulletIndex += 1;
    if (bulletIndex >= bulletCount)
    {
      bulletIndex = 0;
    }
  }
}
  
void keyPressed()
{
    // We set our right, left, up, down variables instead of setting
    // car.position or car.velocity directly here. This allows us to have smooth
    // movement. Otherwise holding down a key only gets caled every second or so
    // and creates jerky movement because of Windows 7/Mac key repeat.
    // To get smooth movement you need to keep track of the states yourself.
    // We use 1 and -1 to also store direction of the keys and cancel each other out.
    if (key == 'w')
    {
      up = 1;
    }
    if (key == 's')
    {
      down = 1;
    }
}
  
void keyReleased()
{
    // Reset our key states to 0 when released.
    if (key == 'w')
    {
      up = 0;
    }
    if (key == 's')
    {
      down = 0;
    }
}
 
 
class SpriteObject
{
  float x = 0.0;
  float y = 0.0;
  float w = -1.0;
  float h = -1.0;
  float rotation = 0.0;
  float speed;
  float directionX;
  float directionY;
  float s = 1.0;
  PImage img;
  boolean loaded = false;
  boolean dead = false;
       
  SpriteObject(String filename)
  {
    this.img = requestImage(filename);
  }
      
  boolean isMouseOverlapping()
  {
    if (mouseX > (this.x - (this.w * 0.5 * this.s))
      && mouseX < (this.x + (this.w * 0.5 * this.s))
      && mouseY > (this.y - (this.h * 0.5 * this.s))
      && mouseY < (this.y + (this.h * 0.5 * this.s)))
    {
      return true;
    }
    else
    {
      return false;
    }
  }
      
  boolean isOverlapping(SpriteObject other)
  {
    float left = this.x - (this.w * 0.5 * this.s);
    float right = this.x + (this.w * 0.5 * this.s);
    float top = this.y - (this.h * 0.5 * this.s);
    float bottom = this.y + (this.h * 0.5 * this.s);
         
    float otherLeft = other.x - (other.w * 0.5 * other.s);
    float otherRight = other.x + (other.w * 0.5 * other.s);
    float otherTop = other.y - (other.h * 0.5 * other.s);
    float otherBottom = other.y + (other.h * 0.5 * other.s);
         
    return !(left > otherRight || right < otherLeft || top > otherBottom || bottom < otherTop);
  }
    
  void update()
  {
    if (this.x > width - (this.w * this.s * 0.5) && this.directionX > 0)
    {
      this.x = width - (this.w * this.s * 0.5);
      this.directionX = -this.directionX;
    }
    if (this.x < (this.w * this.s * 0.5) && this.directionX <= 0)
    {
      this.x = (this.w * this.s * 0.5);
      this.directionX = -this.directionX;
    }
    if (this.y > height - (this.h * this.s * 0.5) && this.directionY > 0)
    {
      this.y = height - (this.h * this.s * 0.5);
      this.directionY = -this.directionY;
    }
    if (this.y < (this.h * this.s * 0.5) && this.directionY <= 0)
    {
      this.y = (this.h * this.s * 0.5);
      this.directionY = -this.directionY;
    }
        
    this.y += directionY * speed;
    this.x += directionX * speed;
  }
   
     
  void render()
  {
    if (this.img.width > 0 && loaded == false)
    {
      loaded = true;
      if (this.w == -1.0)
      {
        this.w = this.img.width;
      }
      if (this.h == -1.0)
      {
        this.h = this.img.height;
      }
    }
         
    if (loaded)
    {
      imageMode(CENTER);
      pushMatrix();
      translate(this.x, this.y);
      rotate(radians(this.rotation));
      scale(this.s);
      image(this.img, 0, 0, this.w, this.h);
      popMatrix();
    }
  }
}


