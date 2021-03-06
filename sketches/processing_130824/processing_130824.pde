
void setup() {
    size(500, 500);
    rx = 50;
    ry = 50;
    ex = 350;
    ey = 450;
    rectMode(CENTER);
    frameRate(2);
    count = 20;
    targetVel = 20;
}
void draw() {
        background(225);
        rect(rx, ry, 20, 20);
        ellipse(ex, ey,20,20);
        if(count != 0){
            h = ey - ry;
            d = ex + targetVel * count - rx;
            dh = h/count;
            dd = d/count;
            count--;
            rx += dd;
            ry += dh;
            ex += targetVel;
            ey += targetVel;
            rx%=width;
            ry%=height;
            ex%=width;
            ey%=height;
         
        if(ex<0) ex = ex+width;
        if(rx<0) ex = rx+width;
        if(ex<0) ex = ey+height;
        if(rx<0) ex = ry+height;
        }
}
void mousePressed() {
    count = 10;
  if (mouseButton == LEFT) {
    dx = random(-20,20);
    targetVel -= 20;
  } else if (mouseButton == RIGHT) {
    dy = random(-20,20);
    targetVel += 20;
  }
}

