
float [][][] a;
float [][][] b;
float [][][] c;
 
int p = 0, q = 1;
 
void setup()
{
 
  size(400,400);
  frameRate (15);
  colorMode(HSB,1.5);
  a = new float [width][height][2];
  b = new float [width][height][5];
  c = new float [width][height][5];
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      a[x][y][p] = random(0.0,2.0);
      b[x][y][p] = random(0.0,1.0);
      c[x][y][p] = random(0.0,5.0);
    }
  }
}
 
void draw()
{
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float c_a = 0.0;
      float c_b = 0.0;
      float c_c = 0.0;
      for (int i = x - 1; i <= x+1; i++) {
        for (int j = y - 1; j <= y+1; j++) {
          c_a += a[(i+width)%width][(j+height)%height][p];
          c_b += b[(i+width)%width][(j+height)%height][p];
          c_c += c[(i+width)%width][(j+height)%height][p];
        }
      }
      c_a /= 8.0;
      c_b /= 10.0;
      c_c /= 9.0;
      // adjust these values to alter behaviour
      a[x][y][q] = constrain(c_a + c_a * (2 * c_b - c_c), 0, 1);
      b[x][y][q] = constrain(c_b + c_b * (c_c - 1.2 * c_a), 0, 1);
      c[x][y][q] = constrain(c_c + c_c * (c_a - c_b), 0,1);
      set(x,y,color(a[x][y][q],0.9,0.9));
    }
  }
  if (p == 0) {
    p = 1; q = 0;
  }
  else {
    p = 0; q = 1;
  }
}
 
void mousePressed()
{
  setup();
}


