
size (500,500);
background (255);
float space =25;
  
smooth();
  
for (float x = 0; x < width+40; x = x+space) {
  for (float y = 0; y < 500; y = y+space) {
    colorMode(RGB, 100);
      
strokeWeight (random (1,55));
colorMode(RGB, 100);
stroke(random (100), 0, 255);
float y2 = y - random(100,250);
  float x2 = x + random(-45,45);
 
    point(x, y);
    strokeWeight (random (5,15));
    stroke( 0, 0,random (255));

  }
}


