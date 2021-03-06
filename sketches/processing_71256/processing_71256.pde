
PImage cat,thrcat;

void setup()
{
  size(635,731);
  cat = loadImage("cat.jpg");
  thrcat = loadImage("cat.jpg");
  
  image(thrcat,0,0);
  thrcat.filter(THRESHOLD,0.7);
}

void draw()
{
  thrcat.loadPixels();
  cat.loadPixels();
  loadPixels();
  
  for (int x = 0; x < cat.width; x++) 
  {
    for (int y = 0; y < cat.height; y++ ) 
    {
      int loc = x + y*cat.width;
      float distance = dist(x,y,mouseX,mouseY);
      float frac = 1.2*(200-distance)/200;
      frac = constrain(frac,0,1);
      
      float r = frac*red(cat.pixels[loc])+(1-frac)*red(thrcat.pixels[loc]);
      float g = frac*green(cat.pixels[loc])+(1-frac)*green(thrcat.pixels[loc]);
      float b = frac*blue(cat.pixels[loc])+(1-frac)*blue(thrcat.pixels[loc]);
      
      pixels[loc] = color(r,g,b);
    }
  }
  updatePixels();
}

