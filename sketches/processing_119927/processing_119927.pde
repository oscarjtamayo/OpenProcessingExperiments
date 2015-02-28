
int [] eins = 
{
0,1,2,3,4,5,6,7,8,9,
1,2,0,4,6,3,9,5,7,8,
5,9,3,6,2,4,7,8,0,1,
4,5,7,8,3,0,2,1,9,6,
2,3,5,0,9,6,8,4,1,7,
8,6,4,1,0,7,5,9,2,3,
6,8,9,5,7,2,1,3,4,0,
7,0,1,2,8,9,4,6,3,5,
9,4,6,7,1,8,3,0,5,2,
3,7,8,9,5,1,0,2,6,4,
};

int [] zwei = 
{
0,1,2,3,4,5,6,7,8,9,
4,9,1,2,3,7,5,8,0,6,
2,4,8,0,7,1,9,3,6,5,
7,6,3,5,0,4,1,9,2,8,
8,5,0,9,1,2,7,6,3,4,
1,7,9,8,5,6,3,0,4,2,
9,0,6,4,8,3,2,1,5,7,
5,3,7,6,2,8,0,4,9,1,
3,8,5,1,6,9,4,2,7,0,
6,2,4,7,9,0,8,5,1,3,
};

int c;
int d;
int f=8;
float x = 0;
float y = 0;
float z = 0;
int h=87;
int m=0;

void setup() {
  size(300, 300);
  background(255);
  smooth(8);
  ellipseMode(CENTER);
  colorMode(HSB, h, h, h);
}

void draw() {
  for (int i= 0; i < 300; i=i+30) {
    for (int j= 0; j < 300; j=j+30) {
      c= eins[m];
      x = lerp(c, f, f);
      fill(x, h, h);
      rect(i, j, 30, 30);
      d= zwei[m];
      y = lerp(d, f, f);
      fill(y, h, h);
      rect(i+7, j+7, 17, 17);
      m=m+1;
    }
  }
  noLoop();
}


