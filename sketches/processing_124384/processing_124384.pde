
void setup(){
    size(500,500);
    rx = 450;
    ry = 70;
    ex = 100;
    ey = 400;
    h = ey - ry;
        d = ex - rx;
    dh = h/20;
    dd = d/20;
    rectMode(CENTER);
    frameRate(2);
}
 
void draw(){
    rect(rx, ry, 20, 20);
    ellipse(ex,ey, 20, 20);
    rx = rx + dd;
    ry = ry + dh;
}
