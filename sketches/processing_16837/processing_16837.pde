

int card = 0; 
PImage a,b,c,candy,star,home,back,chocofac,earth,prince;
PFont f;

void setup() {

  size(600,600);
  background(255);
  smooth();
  a = loadImage("likeU.png");
  b = loadImage("loveU.png");
  c = loadImage("1.png");
  candy = loadImage("2.png");
  star = loadImage("3.png");
  home = loadImage("4.png");
  back = loadImage("background.png");
  chocofac = loadImage("aph_45.jpg");
  earth = loadImage("earth.jpg");
  prince = loadImage("prince.JPG");
  f = loadFont("Helvetica75-Bold-30.vlw");
  textFont(f);
}
void draw() {
  background(255);

  if (card == 0) {
    background(255);

    if((mouseX>300)) {
      noStroke();
      fill(255,0,0);
      rect(300,0,300,600);
    }
    stroke(3);
    marvin(-300,-10,1.2);
    marvin(300,90,1);

    println(mouseX);
    println(mouseY);
  }  
  else if (card == 1) {  
    background(255);
    noStroke();
    fill(255,200,220);
    rect(0,0,300,600);
    fill(255,100,155);
    ellipse(100,244,30,20);
    if((mouseX>0) && (mouseX<300)) {
      fill(255,0,0);
      rect(0,0,300,600);
    }
    stroke(3);
    marvin(-300,-10,1.2);
    marvin(300,90,1);

    cardTwo();
  } 

  else if (card  == 2) {  
    background(255);
    noStroke();
    fill(255,200,220);
    rect(0,0,300,600);
    fill(255,200,220);
    rect(300,0,300,600);
    fill(255,100,155);
    ellipse(100,244,30,20);
    ellipse(522,300,30,20);
    if((mouseX>260) && (mouseX<340)){
    text("click!",280,300);
    }
    
    stroke(3);
    marvin(-300,-10,1.2);
    marvin(300,90,1);
  }
  else if (card  == 3) { 

    noStroke();
    fill(255,110,157);
    rect(0,0,400,600);
    fill(255,168,168);
    rect(400,0,200,600);

    fill(255,100,155);
    ellipse(150,244,30,20);
    ellipse(522,300,30,20);
    stroke(3);

    image(a,220,50);
    marvin(-250,-10,1.2);
    marvin(300,90,1);
  }
  else if (card  == 4) {  
    noStroke();
    fill(255,110,157);
    rect(0,0,400,600);

    fill(255,43,113);
    rect(200,0,400,600);
    fill(255,100,155);
    ellipse(150,244,30,20);
    ellipse(480,300,30,20);
    stroke(3);

    image(b,320,70);
    marvin(-250,-10,1.2);
    marvin(250,90,1);
  } 
  else if (card  == 5) {  
    noStroke();
    fill(255,110,157);
    rect(0,0,400,600);
    fill(255,43,113);
    rect(400,0,200,600);
    fill(255,0,84);
    rect(100,0,400,600);
    fill(255,100,155);
    ellipse(80,244,30,20);
    ellipse(280,244,30,20);
    ellipse(370,310,30,20);
    ellipse(530,310,30,20);
    stroke(3);
    marvin(-150,-10,1.2);
    marvin(150,90,1);
  } 

  else if (card  == 6) {  
    noStroke();
    fill(255,0,84);
    rect(0,0,600,600);
    fill(255,100,155);
    ellipse(130,244,30,20);
    ellipse(330,244,30,20);
    ellipse(320,310,30,20);
    ellipse(480,310,30,20);
    stroke(3);
    marvin(-100,-10,1.2);
    marvin(100,90,1);
  } 

  else if (card == 7) {  
    background(255,0,84);
    image(c,0,0);
  }
  else if (card == 8) {  
    background(255,0,84);
    image(c,0,0);    
    fill(255);
    text("We are Ready! Will You join us?",70,300);
    text("YES!",410,400);
    text("NO,THANKS.",410,450);
  }
  else if ( card == 9) {
    background(255,0,84);
    fill(255);
    text("Where should we go?",150,300);
    image(back,0,0);
    image(candy,70,100); 
    image(star,210,350);
    image(home,470,200);
  }
  else if(card == 10) { 
    image(chocofac,0,0,800,600);
    image(c,350,400,300,300);
    text("welcome to CHOCOLATE STAR!",60,300);
  }
  else if(card == 11) {
    background(0);
    text("...... OK ..byebye..",150,300);
  }
  else if(card == 12) {
    image(earth,0,0,600,600);
    image(c,350,400,300,300);
    text("Here is your home!",150,300);
  }//house

  else if(card == 13) {
    image(prince,200,0,400,600);
    image(c,0,400,300,300);
    fill(0);
    text("Little prince's star!",150,300);
  }//star
}


void mousePressed() {  

  if (card == 0) {  
    if((mouseX>300) && (mouseX<600)) {
      card = 1;
    } 
    else card = 0;
  }  

  else if (card == 1) {  
    if((mouseX>0) && (mouseX<300)) {
      card = 2;
    }
    else card = 1;
  }

  else if (card == 2) {
    card = 3;
  }
  else if (card == 3) {
    card = 4;
  }  
  else if (card == 4) {
    card = 5;
  }  
  else if (card == 5) {
    card = 6;
  } 
  else if (card == 6) {
    card = 7;
  }
  else if (card == 7) {
    card = 8;
  }
  else if (card == 8) {
    if ((mouseX > 410)&&(mouseX<600) && (mouseY > 430) &&(mouseY<460)) {
      card=11;
    }
    else card = 8;

    if(card == 8) {
      if((mouseX>410)&&(mouseX<600)&&(mouseY>380)&&(mouseY<410))
        card = 9;
    }
  }
  else if (card == 9) {
    if ((mouseX>70) && (mouseX<140) && (mouseY>100) && (mouseY<175)) {
      card = 10;
    }
    else card = 9;
    if (card == 9) {
      if((mouseX>470) && (mouseX<540) && (mouseY>200) && (mouseY<275))
        card = 12;
    }
    if (card == 9) {
      if((mouseX>210) && (mouseX<280) && (mouseY>350) && (mouseY<420))
        card = 13;
    }
  }

  else if (card == 10) {
    card = 0;
  }
  else if (card == 11) {
    card = 8;
  }
  else if (card == 12) {
    card = 0;
  }
  else if (card == 13) {
    card = 0;
  }
}


void cardOne() {
  /*   
   code here to draw something for the first page,  
   */
}


void cardTwo() {
  /*   
   code here to draw something for the first page,  
   */
}




void marvin(int x, int y, float s) {

  pushMatrix();
  scale(s);
  translate(x,y);
  strokeWeight(3);

  //head
  beginShape();
  noFill();
  ellipse(300,150,250,250);
  vertex(182,190);
  bezierVertex(182,190,300,150,416,190);
  endShape();

  //eyes




  beginShape();
  fill(0,255,185);
  vertex(212,184);
  vertex(236,197);
  vertex(236,197);
  vertex(248,177);
  endShape();
  beginShape();
  vertex(350,175);
  vertex(355,197);
  vertex(355,197);
  vertex(386,181);
  endShape();
  float lx = map(mouseX, 0, width, 225, 236);
  float ly = map(mouseY, 0, height,178, 185);
  float rx = map(mouseX, 0, width, 352,370);
  float ry = map(mouseY, 0, height, 178,185);
  fill(0);
  rect(lx,ly,6,6);
  rect(rx,ry,6,6);


  //body
  beginShape();
  noFill();
  vertex(245,263);
  bezierVertex(245,263,230,297,240,344);
  endShape();
  line(240,344,260,320);
  line(260,320,350,320);
  line(350,320,369,344);
  beginShape();
  vertex(360,262);
  bezierVertex(360,262,375,292,369,344);
  endShape();
  beginShape();
  vertex(245,336);
  bezierVertex(245,336,300,350,360,336);
  endShape();
  beginShape();
  strokeWeight(1.5);
  vertex(245,365);
  bezierVertex(245,365,300,380,360,366);
  endShape();
  strokeWeight(3);
  line(245,336,245,366);
  line(363,336,363,366);
  line(245,366,300,392);
  line(363,366,300,392);

  //sholder
  beginShape();
  fill(0);
  vertex(362,262);
  vertex(372,270);
  vertex(386,262);
  vertex(370,310);
  endShape();
  beginShape();
  vertex(245,263);
  vertex(229,270);
  vertex(218,262);
  vertex(238,310);
  endShape();

  //left arm
  beginShape();
  noFill();
  vertex(218,262);
  bezierVertex(195,270,185,328,190,430);
  endShape();  
  line(190,430,230,450);
  line(230,450,238,310);  

  //right arm
  beginShape();
  vertex(385,262);
  bezierVertex(405,270,422,328,412,430);
  endShape();
  line(412,430,375,450)  ;
  line(375,450,370,310);


  //right leg
  beginShape();
  fill(0);
  vertex(357,369);
  vertex(357,390);
  vertex(310,397);
  vertex(310,389);
  endShape();
  line(357,390,363,400);
  beginShape();
  noFill();
  vertex(363,400);
  bezierVertex(363,400,370,430,363,460);
  endShape();
  line(363,460,357,466);
  line(357,466,310,466);
  line(310,466,304,460);
  line(304,460,304,400);
  line(304,400,310,397);  


  //right foot
  beginShape();
  vertex(357,466);
  bezierVertex(357,466,370,478,373,500);
  endShape();
  strokeWeight(10);
  line(373,500,310,500);
  strokeWeight(3);
  line(310,500,310,465);

  //left leg
  beginShape();
  fill(0);
  vertex(252,371);
  vertex(252,390);
  vertex(293,397);
  vertex(293,389);
  endShape();
  line(252,390,246,400);
  beginShape();
  noFill();
  vertex(246,400);
  bezierVertex(246,400,239,430,246,460);
  endShape();
  line(246,460,251,466);
  line(251,466,290,466);
  line(290,466,300,460);
  line(300,460,300,400);
  line(300,400,293,397);

  //left foot
  beginShape();
  vertex(250,466);
  bezierVertex(250,466,233,478,230,500);
  endShape();
  strokeWeight(10);
  line(230,500,295,500);
  strokeWeight(3);
  line(295,500,295,462);
  popMatrix();
}


