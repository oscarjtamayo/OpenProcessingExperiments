
float x = 158;
float y = 250;
float x2 = 300;
float y2 = 250;

//BUG`s Position
float xPos = 0;
float yPos = 100;

void setup() {
  size(600,650);
  
}

void draw() { 
  background(230); 
  smooth();
 
  
  //FROG`s body
  ellipseMode(CENTER);
  noStroke();
  fill(0,180,60);
  ellipse(300,300,300,320);

  noStroke();
  fill(238,205,43);
  ellipse(170,234,20,20);
  ellipse(227,209,20,20);
  ellipse(310,190,20,20);
  ellipse(209,180,20,20);
  ellipse(345,154,20,20);
  ellipse(290,230,20,20);
  ellipse(270,156,20,20);
  ellipse(390,178,20,20);
  ellipse(368,220,20,20);
  ellipse(431,235,20,20);

  //FROG`s leg left
  stroke(0,180,60);
  noFill();
  smooth();
  strokeWeight(35.0);
  strokeCap(ROUND);
  line(280,482,100,300);
  line(230,470,100,300);
  smooth();
  noStroke();
  fill(0,180,60);
  arc(280,500,350,80,PI, TWO_PI-PI/2);

  //FROG`s leg right
  stroke(0,180,60);
  noFill();
  smooth();
  strokeWeight(35.0);
  strokeCap(ROUND);
  line(320,482,500,300);
  line(370,470,500,300);
  smooth();
  noStroke();
  fill(0,180,60);
  arc(320,500,350,80,TWO_PI-PI/2, TWO_PI);

  //FROG`s face
  //FROG`s tongue
  strokeWeight(10);
  stroke(255,56,21);
  line(x,y,x2,y2);
 
  x = random (158,440);
 
  x2 = random (50,600);
  y2 = random (100);
  
  //FROG`s mouth
  stroke(0,100,10);
  noFill();
  smooth();
  strokeWeight(8.0);
  strokeCap(ROUND);
  line(158,250,440,250);

  //FROG`s eye left
  smooth();
  fill(255);
  noStroke();
  ellipseMode(CENTER);
  ellipse(155,200,50,50);
  fill(0);
  ellipse(155,200,20,20);

  //FROG`s eye right
  fill(255);
  noStroke();
  ellipseMode(CENTER);
  ellipse(445,200,50,50);
  fill(0);
  ellipse(445,200,20,20);

  //FROG`s eyebrows
  stroke(0);
  noFill();
  smooth();
  strokeWeight(3.5);
  strokeCap(ROUND);
  arc(155,200,60,60,radians(180),radians(270));
  arc(445,200,60,60,radians(270), radians(360));
    
  //BUG
  noStroke();
  fill(0);
  ellipse(xPos,yPos, 20,20);
  xPos = random(50,600);
  yPos = random(200);
}



  






