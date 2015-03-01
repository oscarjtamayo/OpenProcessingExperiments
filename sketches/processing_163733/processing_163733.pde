
void setup () {
  size (300, 300);
  background (0);
  smooth ();
  noLoop ();
}
void draw () {
drawPetal (0, 0, 0, -60, 150, -50, 150, 100, 40, 10 );
}

void drawPetal (int vx1, int vy1, int cx2, int cy2, int vx2, int vy2, int cx4, int cy4, int bright, int weight) {
  translate (150, 150);
  strokeWeight (weight);
  stroke (232, 192, 191, bright *2);
  fill (129, 8, 8, 150);
  beginShape ();
vertex (0, 0);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
beginShape ();
rotate (PI/8);

vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx1, vy1, cx2, cy2, vx2, vy2);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
rotate (PI/8);
beginShape ();
vertex (vx1, vy1);
bezierVertex (vx2, vy2, cx4, cy4, vx1, vy1);
endShape ();
}


