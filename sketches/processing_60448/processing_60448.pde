
int num = 30000;

float[] x = new float[num];
float[] y = new float[num];

PImage img;

void setup() {
  size(375,562);
  img = loadImage("bild1.jpg");
  
  for (int i = 0; i < num; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
  stroke(12,0,0);
}

void draw(){
  background(255);
  for (int i = 0; i < num; i++) {
    color c = img.get(int(x[i]), int(y[i]));
    float b = brightness(c) / 255;
    float speed = pow(b, 2) + .1;
    x[i] +=speed;
    
    if (x[i] > width) {
      x[i] = random(width);
      y[i] = random(height);
    }
    point(x[i],y[i]);
  }
}

  


