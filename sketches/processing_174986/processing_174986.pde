
float[] sX,sY,dX,dY;
float d,z;
int n;
color c;
boolean positif;

void setup() {
  size(400,400);
  setS();
}

void setS() {
  n  = round(random(1,3));
  z  = random(0.01,0.3);
  sX = new float[n];sY = new float[n];
  dX = new float[n];dY = new float[n];
  for(int i=0;i<n;i++){
    sX[i] = random(width);sY[i] = random(height);
    dX[i] = random(-0.01,0.01);dY[i] = random(-0.01,0.01);
  }
}

void draw() {
  for(int i=0;i<n;i++) {
    sX[i]+=dX[i];
    sY[i]+=dY[i];
    if(sX[i]<0||sX[i]>width) {dX[i]*=-1;}
    if(sY[i]<0||sY[i]>height) {dY[i]*=-1;}
  }
  loadPixels();
  for(int x=0;x<width;x++) {
    for(int y=0;y<height;y++) {
      d       = 0.0;
      positif = true;
      for(int s=0;s<n;s++) {
        d += (sq(sX[s]-x)+sq(sY[s]-y))*z;
      }
      d = sin(d);
      if(d<0) {c = color(0);} else {c = color(d*255);}
      pixels[y*width+x]=c;
    }
  }
  updatePixels();
}

void keyPressed() {
  setS();
}

