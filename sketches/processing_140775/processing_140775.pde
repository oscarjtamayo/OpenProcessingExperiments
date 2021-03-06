
//christina weisensel
//sketch

// declare global variables
int earbigSize;
int inearbigSize;
int earsmallSize;
int inearsmallSize;
float blackeyeSize=20;
int noseSize;
int blackeyeColor;  
int noseoneColor;
int nosetwoColor;
int nosethreeColor;
float haironeColor=232;
float hairtwoColor=67;
float hairthreeColor=199;
float fangColor=255;
int fangcolor;
float eyewhiteSize=40;
int eyebrowoneColor;
int eyebrowtwoColor;
int eyebrowthreeColor;
float eyebrowoneSize=15;
float eyebrowtwoSize=-30;
float mouthoneColor=0;
float mouthtwoColor=0;
float mouththreeColor=0;
float headoneSize=200;
float headtwoSize=150;

boolean clicked=false;

// runs once
void setup() {
  size(300, 300);
  background(24, 187, 199);
  noStroke();
}

void keyPressed() {
  clicked=! clicked;
  eyewhiteSize = random(10, 40);
  blackeyeSize = eyewhiteSize/2;
  fangColor = random (140, 255);
  haironeColor = random(0,255);
  hairtwoColor = random(0,255);
  hairthreeColor = random(0,255);
  eyebrowoneSize = random(0,60);
  eyebrowtwoSize = random(-70,-10);
  mouthoneColor = random(0,200);
  mouthtwoColor = mouthoneColor;
  mouththreeColor = mouthoneColor;
  headoneSize = random(180,220);
  headtwoSize = random(130,170);
}

// runs forever
void draw() {
  background(24, 187, 199);


  if (clicked==false) {
    earbigSize=35;
    inearbigSize=20;
    earsmallSize=35;
    inearsmallSize=20;
    noseSize=-10;
    blackeyeColor=0;
    noseoneColor=94;
    nosetwoColor=143;
    nosethreeColor=255;
    fangcolor=255;
    fangColor=255;
    eyebrowoneColor=232;
    eyebrowtwoColor=67;
    eyebrowthreeColor=199;
  }

  if (clicked==true) {
    earbigSize=55;
    inearbigSize=40;
    earsmallSize=10;
    inearsmallSize=5;
    noseSize=0;
    blackeyeColor=255;
    noseoneColor=97;
    nosetwoColor=0;
    nosethreeColor=133;
    fangcolor=0;
    eyebrowoneColor=215;
    eyebrowtwoColor=252;
    eyebrowthreeColor=30;
  }

  translate(150, 150);

  // hair back
  noStroke();
  fill(haironeColor, hairtwoColor, hairthreeColor);
  ellipse(79, -17, 27, 150);

  // ears outside
  fill(230, 182, 115);
  ellipse(75, 5, earsmallSize, earsmallSize);
  fill(230, 182, 115);
  ellipse(-75, -5, earbigSize, earbigSize);

  // ears inside
  fill(204, 164, 108);
  ellipse(75, 5, inearsmallSize, inearsmallSize);
  fill(204, 164, 108);
  ellipse(-75, -5, inearbigSize, inearbigSize);

  // head
  fill(230, 182, 115);
  ellipse(0, 0, headtwoSize, headoneSize);

  // eyes white
  fill(255, 255, 255);
  ellipse(25, -15, eyewhiteSize, eyewhiteSize);

  // nose
  pushMatrix();
  translate(0, 10);
  fill(noseoneColor, nosetwoColor, nosethreeColor);
  triangle(0, noseSize, -12, 16, 12, 16);
  popMatrix();

  // eyes
  fill(255, 255, 255);
  ellipse(-25, -15, eyewhiteSize, eyewhiteSize);
  // eyes black
  fill(blackeyeColor, 0, 0);
  ellipse(23, -15, blackeyeSize, blackeyeSize);
  ellipse(-25, -15, blackeyeSize, blackeyeSize);

  // mouth
  fill (mouthoneColor, mouthtwoColor, mouththreeColor);
  arc(0, 45, 70, 50, 0, PI/1.5+QUARTER_PI, OPEN);

  // hair top
  fill(haironeColor, hairtwoColor, hairthreeColor);
  rotate(3);
  arc(-22, 70, 150, 90, 0, PI/QUARTER_PI, OPEN);

  // fangs
  fill(fangColor, fangcolor, fangcolor);
  triangle(10, -46, 35, -45, 20, -60);
  triangle(-27, -49, -5, -47, -15, -60);

  // eyebrows
  fill(eyebrowoneColor, eyebrowtwoColor, eyebrowthreeColor);
  triangle(eyebrowoneSize, 59, 0, 45, 55, 45);
  triangle(-65, 30, -15, 45, eyebrowtwoSize, 54);
}



