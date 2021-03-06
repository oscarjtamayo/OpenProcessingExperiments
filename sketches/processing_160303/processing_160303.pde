
float theta,sz;
int num = 120, min=20, max=100;

void setup() {
  size(500, 500);
}


void draw() {
  background(0);
  stroke(255,80);
  noFill();
  for (int i=0; i<num; i++) {
    float offSet = TWO_PI/num*i;
    float y = map(sin(theta+offSet), -1, 1, height*.2, height*.8);
    float x = map(sin(theta-offSet), -1, 1, width*.2, width*.8);
    float sz = map(sin(theta*1+offSet*2), -1, 1, min, max);

    ellipse(x, y, sz*1.5, sz);
  }
  theta += 0.0523/3;
}

