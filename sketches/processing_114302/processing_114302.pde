
int c;
int h=324;
int z=0;
PFont f;
void setup() {
  f = createFont("Arial", 17, true);
  size(540, 540);
  background(0);
  smooth(8);
  textFont(f, 17);
}
int [] m = 
{
234,253,272,291,310,95,114,139,158,177,196,215,228,7,27,46,65,80,
259,278,297,316,119,138,157,176,195,214,233,5,240,18,38,57,76,91,
271,290,309,130,149,175,194,213,232,17,29,246,252,42,62,81,100,115,
296,315,154,173,193,212,231,16,35,40,239,258,277,66,73,92,111,126,
308,165,184,211,230,15,34,53,64,245,264,270,289,77,97,116,135,150,
189,208,229,14,33,52,71,75,238,257,276,295,314,101,108,127,146,174,
219,13,32,51,70,89,99,244,263,282,288,307,200,112,132,151,170,185,
31,50,69,88,107,110,237,256,275,294,313,224,9,136,156,162,181,209,
68,87,106,125,134,243,262,281,300,306,1,20,49,147,167,186,205,220,
105,124,143,145,236,255,274,293,312,25,44,67,86,171,191,210,216,10,
142,161,169,242,261,280,299,318,36,55,85,104,123,182,202,221,6,21,
179,180,235,254,273,292,311,60,79,103,122,141,160,206,226,11,30,45,
204,241,260,279,298,317,84,90,121,140,159,178,197,217,3,22,41,56,
4,227,203,192,168,144,133,109,98,74,63,39,28,247,266,285,304,323,
48,24,0,223,199,188,164,153,129,118,94,83,59,269,283,302,321,250,
82,58,47,23,12,222,198,187,163,152,128,117,93,286,305,319,248,267,
113,102,78,54,43,19,8,218,207,183,172,148,137,303,322,251,265,284,
155,131,120,96,72,61,37,26,2,225,201,190,166,320,249,268,287,301,
};
void draw() {
  for (int j= 0; j < 540; j=j+30) {
    for (int i= 0; i < 540; i=i+30) {
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









