
//GoldenRule rule1;
GoldenRule ruleX;

float rot = 0.0;


void setup() {
  frameRate (20);
  size(500, 500);
  //gr1 = new goldenRule(0,0,0,0);
  //rule1 = new GoldenRule(100.0);
  ruleX= new GoldenRule(111);
  smooth();
}












void keyPressed() {

  if ((key == 'q') || (key == 'Q')) {
    ruleX.change ("circle");
  }
}

void draw() {

  ruleX.draw(mouseX);
  


  // rule1.draw();

  pushMatrix();

  translate(width/2, height/2);
  rotate(rot);
  ruleX.draw(100);
  popMatrix();
  rot += 0.1;
}



class GoldenRule {
  float LengthX = 100;
  float LengthY, LengthA;
  color circleColor;
  color squareColor;
  color rectColor;
  color radiusColor;

  GoldenRule(float _LengthX) {

    LengthX = _LengthX;
    LengthY = sqrt((LengthX*LengthX)/2 + (LengthX * LengthX));
    LengthA = LengthX * 1.618;  
    circleColor = color (255, 0, 0);
    squareColor = color (0, 0, 255);
    rectColor = color (0, 255, 255);
    radiusColor = color (100);
  }

  void draw(float _LengthX) {
    LengthX = _LengthX;
    rectMode(CORNER);
    noFill();
    strokeWeight(3);
    stroke(squareColor);//squarecolor
    rect(width/2, height/2, LengthX, LengthX); //square
    noFill();
    strokeWeight(2);
    stroke(circleColor);//circlecolor
    ellipseMode(RADIUS);
    ellipse (width/2, height/2 + LengthX/2, LengthA - LengthX/2, LengthA - LengthX/2);//circle


    rectMode(CENTER);
    stroke (rectColor);//largerect color
    rectMode(CORNER);//large rect
    rect(width/2, height/2, LengthX, LengthA);
    stroke(radiusColor);//radius color
    line(width/2, height/2 + LengthX/2, width/2 + LengthX, height/2 + LengthX); //radius
  }

  void change(String name) {
    if (name.equals("circle")) {
      circleColor = color (int(random(100, 255)), 0, 0);
    }
    else if (name.equals("square")) {
      squareColor = color (0, 0, int(random(40, 255)));
    }
  }
}



