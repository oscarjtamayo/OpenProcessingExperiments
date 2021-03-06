
void setup () {
  size (500, 500);
  //noStroke ();
  smooth ();
  // noLoop ();
}

void draw () {
    //backs of shoes
  noStroke ();
  fill (255);
  ellipse (345, 435, 20, 40);
  ellipse (170, 323, 20, 40); 

  //legs
  stroke (#D8E52A);
  strokeWeight (10);
  line (335, 450, 360, 330);
  line (363, 330, 280, 260);
  line (188, 228, 175, 325);
  line (280, 260, 195, 230);
  noStroke();
  fill(#83CE34);
  //knees
  ellipse (186, 228, 15, 15);
  ellipse (363, 330, 15, 15);

  //butt ellipse
  ellipse  (280, 260, 50, 50);

  //shoes
  noStroke ();
  fill (255);
  ellipse (350, 450, 60, 20);
  ellipse (328, 435, 20, 40);
  ellipse (187, 320, 20, 40); 
  ellipse (165, 337, 60, 20);
  
  //laces
  stroke (0); 
  strokeWeight (1);
  line (155, 330, 166, 336);
  line (147, 332, 170, 333);
  
  line (343, 445, 364, 443 );
  line (354, 440, 353, 448);

  //head arc
  noStroke();
  fill (#83CE34);
  arc (335, 120, 100, 80, PI, 2*PI);

  fill (255);
  ellipse (334, 120, 100, 50);

  fill (255);
  arc (335, 122, 100, 30, PI, 2*PI);

  //head shading
  fill (#D8E52A, 100);
  strokeWeight (1);
  stroke(#C3CE34);
  ellipse (334, 120, 100, 50);

  //torso
  strokeWeight (40);
  noFill ();

  beginShape ();
  curveVertex (300, 155);
  curveVertex (325, 155);
  curveVertex (310, 175);
  curveVertex (280, 210);
  curveVertex (280, 250);
  curveVertex (280, 300);
  stroke (#83CE34);
  endShape ();

  //belly button
  noStroke ();
  fill (#5D7E16);
  ellipse (275, 232, 6, 10);

  noFill ();
  
  stroke (#C3CE34);
  strokeWeight (1.5);
  ellipse (335, 120, 30, 20);
  stroke (255);
  int lx = 335;

  int ly=120;
  line(lx, ly, lx-50, ly);
  line(lx, ly, lx+50, ly);
  line(lx, ly, lx, ly-25);
  line(lx, ly, lx, ly+25);  
  line(lx, ly, lx+40, ly-15);
  line(lx, ly, lx-40, ly+15);
  line(lx, ly, lx+40, ly+15);
  line(lx, ly, lx-40, ly-15);

  //neck
  stroke (#83CE34);
  strokeWeight (10);
  line (332, 140, 335, 120);

  //eyeshading
  noStroke();
  fill (#5D7E16);
  ellipse (321, 85, 18, 5);
  ellipse (348, 85, 15, 5);

  //eyes
  noStroke ();
  fill (255);
  ellipse (321, 80, 15, 12);
  ellipse (348, 80, 15, 12);

  //pupil
  float ex = 320;
  float ey = 80;
 // fill (#4D4D50);
 fill (255, 0, 0);
  float dxiris = constrain ((mouseX-ex)/80, -10, 14);
  float dyiris = constrain ((mouseY-ey)/100, -14, 14);
  ellipse (ex+dxiris, ey+dyiris, 5, 5);
  float exL = 348;
  float eyL = 80;
  float dxirisL = constrain ((mouseX-exL)/80, -10, 14);
  float dyirisL = constrain ((mouseY-eyL)/100, -14, 14);
  ellipse (exL+dxirisL, eyL+dyirisL, 5, 5);
}


