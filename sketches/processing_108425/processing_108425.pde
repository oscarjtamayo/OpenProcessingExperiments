
void setup(){
  size (500,300);
  background(255,255,255);
  }
void draw () {
  strokeWeight(5);
  line(70, 0, 70, 400); 
  line(130, 0, 130, 400);
  line(270, 0, 270, 400);
  line(420, 0, 420, 400);
  line(0, 40, 560, 40); 
  line(0, 110, 560, 110);
  line(0, 240, 560, 240);
  line(70, 200, 130, 200); 
  fill(255, 231, 11);
  rect(70, 200, 60, 39);
  fill(255, 0, 0);
  rect(70, 40, 60, 70);
  fill(0, 0 , 255);
  rect(270, 40, 150, 70);
}
