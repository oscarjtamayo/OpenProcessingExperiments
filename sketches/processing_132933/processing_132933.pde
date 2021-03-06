
boolean saveAnim = false;
float frm;
int numElem = 200;
myDot[] myDots = new myDot[numElem];
color bg = #eeeeee;
color[] palette = {
  #F58F12, #0B9EE7, #4EA731, #F4D910, #F334E3
};

void setup() {
  size(800, 600);
  background(bg);
  noStroke();
  float locx, locy, start_sz, r;
  color col;

  for (int i=0; i<numElem; i++) {
    locx = random(width);
    locy = random(height);
    start_sz = random(10, 20);
    col = palette[int(random(5))];  
    r = random(TWO_PI);  
    myDots[i]= new myDot(locx, locy, start_sz, col, r);
  }
}

void draw() {
  //fill(bg, 10);
  //rect(0, 0, width, height);
  for (int i=0; i<numElem; i++) {
    myDots[i].display();
  }

  if (saveAnim) {
    if (frameCount % 4 == 0 && frameCount < frm+121) saveFrame("image-###.gif");
  }
}

void keyPressed() {
  saveAnim = true;
  frm = frameCount;
}

void mouseClicked() {
  //setup();
  save(random(123)+".png");
}

class myDot {
  float locx, locy, start_sz, sz, r, x, y;
  color col;
  int dir=1;

  myDot(float _locx, float _locy, float _start_sz, color _col, float _r) {
    locx = _locx;
    locy = _locy;
    start_sz = _start_sz;
    col = _col;
    r = _r;
    x = random(-20, 20);
    y = random(-20, 20);
    if (random(1)>.5) dir =-1;
  }

  void display() {
    stroke(col,10);
    noFill();
    pushMatrix();
    translate(locx, locy);
    rotate(r);
    sz = map(sin(r), -1, 1, 10, start_sz*10);
    rect(x, y, sz, sz, sz/4);
    popMatrix();
    r += 0.0523/2*dir;
  }
}



