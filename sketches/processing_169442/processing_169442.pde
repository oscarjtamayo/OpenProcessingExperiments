
float num;
void setup() {
  size(640, 640);
  noStroke();
}
void draw() {
  background(255);
  translate(width/2, height);
  for (int q = 60; q > 0; q--) {
    beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < 180; i+=12) {
      float d = map(q, 60, 0, 4, 1);
      fill(sin(radians(i*q))*255, 0, 0, 200);
      vertex(cos(radians(i+frameCount))*20+sin(q+i+num)*50, -i*d);
    }
    endShape();
  }
  num+=0.03;
}



