
int c;
int h=144;
int z=0;
PFont f;
void setup() {
  f = createFont("Arial", 17, true);
  size(360, 360);
  background(0);
  smooth(8);
  textFont(f, 17);
}
int [] m = 
{
9,22,35,39,52,65,114,127,140,84,97,74,
106,83,93,24,1,14,123,136,113,68,42,55,
59,69,46,90,103,80,132,109,122,4,17,27,
61,38,48,112,125,135,33,10,23,79,92,102,
19,32,6,121,134,108,94,107,81,51,64,41,
76,89,99,139,116,126,47,57,70,26,0,13,
110,120,133,21,34,11,56,66,43,101,75,88,
128,138,115,82,95,105,5,15,28,37,50,60,
137,111,124,71,45,58,98,72,85,18,31,8,
36,100,20,53,78,25,67,86,3,117,130,143,
30,49,77,2,63,91,16,44,96,142,119,129,
87,7,62,104,12,40,73,29,54,131,141,118,
};
void draw() {
  for (int j= 0; j < 360; j=j+30) {
    for (int i= 0; i < 360; i=i+30) {
      c= m[z];
      colorMode(HSB, h, h, h);
      fill(c, h, h);
      rect(j, i, 30, 30);
      fill(0);
      text(c, j+2, i+22);
      z=z+1;
    }
  }z=0;
}





