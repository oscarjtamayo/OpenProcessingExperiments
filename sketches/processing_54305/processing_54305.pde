
// 3) modified brush so pattern varies over time, brush size and colour fluctuate
void setup () {
  background(200,23,25);
  size(300,300);
  smooth();
  }
  
  void draw (){
  }


void mouseDragged () {
  brush (); // Brush Function/
  }

void brush () {
   color from = color(random(255), random(255), random(255),random(255));
   color to = color(random(255), random(255), random(255),random(255));
   color start1 = lerpColor(from, to, .22);
   color fin1 =lerpColor(from, to, .44);
  //lerp colors
  // -- the object that BRUSH FUNCTION creates
  fill (start1);
  stroke(fin1);
 
  noStroke();
  ellipse(mouseX,mouseY,mouseX,mouseY);
  ellipse(mouseX,mouseY, 30, 60);
  rect(mouseX,mouseY,30,60);
 


}

