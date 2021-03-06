
float a[][], aNext[][];
float b[][], bNext[][];
  
int w = 100;
int h = 100;
  
float delx = 1; // 1
float delxSq = delx*delx;
float deltaT = 5; // 1.2 min - 5 max
float reactionRate = .62; // 0.62 - 0.49
float aRate = 0.0385; // 0.04 - 0.038
float bRate = 0.008; // 0.008 - 0.01
float F = 0.006999998; //.015; // 0.04 - 0.015
float k = 0.031000046; //.06; // 0.07 - 0.06
  
  //F0.0069999984,  K 0.06 = LEOPARD SPOTS!
  //F : 0.007999998 K : 0.031000046 coral?
int iNext[] = new int[w];
int jNext[] = new int[h];
int iPrev[] = new int[w];
int jPrev[] = new int[h];
  
//<------------------------------------------
  
void setup() 
{
  //smooth();
  size(400,400, OPENGL);
  //colorMode(HSB,1.0);
  a = new float[w][h];
  b = new float[w][h];
  aNext = new float[w][h];
  bNext = new float[w][h];
  for(int i=0;i<w;++i)
  {
    iNext[i] = (i+1)%w;
    iPrev[i] = (i-1+w)%w;
  }
  for(int j=0;j<h;++j)
  {
    jNext[j] = (j+1)%h;
    jPrev[j] = (j-1+h)%h;
  }
  initialize();
  F += (0-1 + random(2))/1000;
  k += (0-1 + random(2))/100;
}
  
//<------------------------------------------
  
void initialize() 
{ 
  background(0);
  for(int i=w/10;i<w;++i) 
  {
    for(int j=0;j<h;++j) 
    {
      a[i][j] = .5+random(-.01,.01);
      b[i][j] = .25+random(-.01,.01);
    }
  }
    
  for(int i=w/2;i<w*3/5;++i) 
  {
    for(int j=h/2;j<h*3/5;++j) 
    {
      a[i][j] = 1+random(-.01,.01);
      b[i][j] = 0+random(-.01,.01);
    }
  }
}
  
 
  
//--------------------------------------------
  
float zpos = 0;
  
void draw()
{
  //background(255);
  step();
  stroke(0);
  int index = 0;

  pushMatrix();
   translate(0,zpos/6,0);

  for(int i=0;i<w;++i) 
  {
    for(int j=0;j<h;++j) 
    {
        if(a[i][j] < 0.08)
        {
              stroke(a[i][j]*255, (a[i][j]*255)/1.2,10,a[i][j]*255);
              point(150+i,140,100+j );
        }
      //pixels[j*w+i] = color();
    }
  }
  
  popMatrix();
  
 


//  updatePixels();
  zpos +=0.5;

}


void keyPressed()
{

  if(key == 'r')
  {
        zpos = 0;
        background(0);
        initialize();
        F = 0.006999998; //.015; // 0.04 - 0.015
        k = 0.031000046; //.06; // 0.07 - 0.06
        F += (0-1 + random(2))/1000;
        k += (0-1 + random(2))/100;
  }

  if(key == CODED)
  {
    if(keyCode == UP)
    {
      if(F > 0.001)
      {
        F -= 0.001;
      }
    }
    
    if(keyCode == DOWN)
    {
      F += 0.001;
    }
    
    if(keyCode == LEFT)
    {
      if(k > 0.001)
      {
        k -= 0.001;
      }
    }
    
    if(keyCode == RIGHT)
    {
      k += 0.001;
    }
    

    
    
    println("F : " + F + " K : " + k);
  }
}
  
//<-------------------------------------------
  
void step() {
  diffusion();
  reaction();
}
  
void diffusion() 
{
  for(int i=0;i<w;++i) 
  {
    for(int j=0;j<h;++j) 
    {
      aNext[i][j] = a[i][j]+aRate*deltaT/delxSq*
        (a[iNext[i]][j]+a[iPrev[i]][j]
        +a[i][jNext[j]]+a[i][jPrev[j]]
        -4*a[i][j]);
      
      bNext[i][j] = b[i][j]+bRate*deltaT/delxSq*
        (b[iNext[i]][j]+b[iPrev[i]][j]
        +b[i][jNext[j]]+b[i][jPrev[j]]
        -4*b[i][j]);
    }
  }
  
  float[][] temp;
  temp = a;
  a = aNext;
  aNext = temp;
  temp = b;
  b = bNext;
  bNext = temp;
}
  
void reaction() 
{
  float valA, valB;
  float currA;
  int index = 0;
  for(int i=0;i<w;++i) 
  {
    for(int j=0;j<h;++j) 
    {
      valA = deltaT*reactionA(a[i][j],b[i][j]);
      valB = deltaT*reactionB(a[i][j],b[i][j]);
      a[i][j] += valA;
      b[i][j] += valB;
    }
  }
}
  
float reactionA(float aVal, float bVal) 
{
  return reactionRate*(-aVal*bVal*bVal+F*(1-aVal));
}
  
float reactionB(float aVal, float bVal) 
{
  return reactionRate*(aVal*bVal*bVal-(F+k)*bVal);
}
