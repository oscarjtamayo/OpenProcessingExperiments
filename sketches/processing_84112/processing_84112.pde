
color bgcolor;

void setup() {
  size(500, 500);
  bgcolor = color(random(255), 100, 255);
  background(bgcolor);
  fill(random(255), 100, 200);
  noStroke();
}
boolean down = false;
void draw() {
  if (down)
    ellipse(mouseX, mouseY, 100, 100);
  down = false;
}
void mousePressed() {
  down = true;
}
