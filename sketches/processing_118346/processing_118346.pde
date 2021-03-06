
//Much of this code is taken from the in lcass assignment of 10-27.
float timer;
SpriteObject bul;
SpriteObject cha;
Predator squ;
PImage b;
float x;
float y;
   
void setup()
{
  size(500, 500);
   
  b = requestImage("background.png");
  
  squ = new Predator("squirtle.gif");
  squ.s = .25;
  
  cha = new SpriteObject("charmander.gif");
  cha.y = 100;
  cha.directionX = 1.5;
  cha.directionY = 2.0;
  cha.speed = 3;
  cha.s = .25;
     
 bul = new SpriteObject("bulbasaur.png");
 bul.y = 300;
 bul.x = 300;
 bul.s = 2;
 bul.directionX = 1;
 bul.directionY = 1;
 bul.speed = 5;
 
   
     
    
}
   
void draw()
{
  imageMode(CORNER);
  if (b. width>0)
  {
    image(b,0,0,500,500);
  }
   
  bul.update();
  bul.render();
    
  squ.update();
  squ.render();
   
  cha.update();
  cha.render();
    
  if (squ.isOverlapping(bul) == true)
  {
  bul.s *= 0.1;
  squ.img = squ.img;
  }
   
  if (timer > 10)
  {
    cha.speed = 0;
    cha.s *= 0.2;
  }
     
  timer += 0.0167;
    
}
   
   class Predator extends SpriteObject
   {
     
  float e = 0.1;
   
  void update()
  {
    float targetY = bul.y;
    float dy = targetY - y;
    if (abs(dy) > 1) {
      y += dy * e;
    }
   
    float targetX = bul.x;
    float dx = targetX - x;
   
    if (abs(dx) > 1)
    {
      x += dx * e;
    }
  }
   
   
  Predator (String filename)
  {
    super(filename);
  }
}
class SpriteObject
{
  float x = 0.0;
  float y = 0.0;
  float directionX;
  float directionY;
  float speed;
  float w = -1.0;
  float h = -1.0;
  float rotation = 0.0;
  float s = 1.0;
  PImage img;
  boolean loaded = false;
       
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
      
  boolean isOverlappingRect(float otherLeft, float otherTop, float rwidth, float rheight)
  {
    float left = this.x - (this.w * 0.5 * this.s);
    float right = this.x + (this.w * 0.5 * this.s);
    float top = this.y - (this.h * 0.5 * this.s);
    float bottom = this.y + (this.h * 0.5 * this.s);
        
    float otherRight = otherLeft + rwidth;
    float otherBottom = otherTop + rheight;
    return !(left > otherRight || right < otherLeft || top > otherBottom || bottom < otherTop);
  }
    
   
     
  void update()
  {
    // If hitting Right
    if (this.x > width - (this.w * this.s * 0.5) && this.directionX > 0)
    {
      this.x = width - (this.w * this.s * 0.5);
      this.directionX = -this.directionX;
    }
       
    // Left
    if (this.x < (this.w * this.s * 0.5) && this.directionX <= 0)
    {
      this.x = (this.w * this.s * 0.5);
      this.directionX = -this.directionX;
    }
       
    // Bottom
    if (this.y > height - (this.h * this.s * 0.5) && this.directionY > 0)
    {
      this.y = height - (this.h * this.s * 0.5);
      this.directionY = -this.directionY;
    }
       
    // Top
    if (this.y < (this.h * this.s * 0.5) && this.directionY <= 0)
    {
      this.y = (this.h * this.s * 0.5);
      this.directionY = -this.directionY;
    }
       
    // Move the sprite
    this.y += directionY * speed;
    this.x += directionX * speed;
      
    float waveSpeed = 5;
    float waveHeight = 5;
    float angle = this.x * waveSpeed;
    float offset = sin(radians(angle)) * waveHeight;
    this.y += offset;
      
    this.x += random(-3, 3);
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



