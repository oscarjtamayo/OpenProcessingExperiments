
void setup() {
  size (800,800);
  noStroke();
}
 
void draw() {
  background(94,158,245);
   
  fill(245,235,121);
for (int i = 0 ; i < 101 ; i++) {
  for (int j = 0 ; j < 101 ; j++) {
    ellipse(35*i, 35*j, 10, 10) ;
  text(mouseX + ", " + mouseY, 20, 20);
  }
}

fill(154,245,94);
rect(0,600,800,200);
ellipse(200,100,80,80);
ellipse(300,50,80,80);
ellipse(420,40,80,80);
ellipse(540,60,80,80);
ellipse(640,110,80,80);


fill(#FFFFFF);
rect(0,675,800,20);
rect(390,695,20,120);

fill(#FFFFFF);
rect(175,68,5,65);
rect(220,68,5,65);
rect(276,17,5,65);
rect(320,17,5,65);
rect(396,8,5,65);
rect(440,8,5,65);
rect(515,27,5,65);
rect(560,28,5,65);
rect(615,77,5,65);
rect(658,77,5,65);

fill(227,94,245);
rect(50,166,20,175);
ellipse(62,120,120,160);

fill(255,0,128);
rect(300,440,40,200);
rect(460,440,40,200);
rect(50,300,200,40);
rect(550,300,200,40);

fill(#FFFFFF);
rect(203,300,25,40);
rect(570,300,25,40);

fill(255,0,128);
ellipse(400,300,350,350);
ellipse(50,320,50,50);
ellipse(750,320,50,50);

fill(0);
rect(322,209,2,30);
rect(328,200,2,30);
rect(336,195,2,30);
rect(475,209,2,30);
rect(469,200,2,30);
rect(462,195,2,30);

fill(#FFFFFF);
ellipse(350,250,60,80);
ellipse(450,250,60,80);

fill(54,125,245);
ellipse(350,260,40,40);
ellipse(450,260,40,40);

fill(0);
ellipse(350,260,25,25);
ellipse(450,260,25,25);

fill(#FFFFFF);
rect(300,560,40,50);
rect(460,560,40,50);

fill(227,94,245);
arc(480, 650, 100, 100, PI, TWO_PI);
arc(320, 650, 100, 100, PI, TWO_PI);

fill(0);
ellipse(400,375,50,50);
rect(210,300,2,40);
rect(586,300,2,40);

fill(#FFFFFF);
rect(455,620,50,4);
rect(297,620,50,4);
rect(307,610,30,4);
rect(465,610,30,4);

fill(#FFFFFF);
rect(300,446,200,70);
rect(275,150,250,30);
rect(429,645,100,6);
rect(270,645,100,6); 

fill(0);
rect(325,455,2,60);
rect(350,455,2,60);
rect(375,455,2,60);
rect(400,455,2,60);
rect(425,455,2,60);
rect(450,455,2,60);
rect(475,455,2,60);

fill(94,158,245); 
ellipse(62,119,110,140);

fill(#FFFFFF);
rect(20,70,3,96);
rect(30,60,3,118);
rect(40,55,3,130);
rect(50,50,3,138);
rect(60,50,3,138);
rect(70,50,3,138);
rect(80,53,3,132);
rect(90,59,3,118);
rect(100,69,3,96);
rect(30,60,65,3);
rect(22,70,80,3);
rect(15,80,92,3);
rect(11,90,100,3);
rect(10,100,106,3);
rect(10,110,106,3);
rect(10,120,106,3);
rect(10,130,106,3);
rect(10,140,103,3);
rect(14,150,96,3);
rect(19,160,87,3);
rect(25,170,75,3);
rect(35,180,50,3);

fill(227,94,245); 
rect(275,155,250,20);
rect(460,570,40,10);
rect(300,570,40,10);

fill(#FFFFFF);
triangle(499,444,497,516,549,515);
triangle(300,447,300,517,255,518);

fill(0);
rect(294,454,213,2);
rect(275,482,2,35);
rect(300,455,2,60);
rect(500,455,2,60);
rect(525,482,2,35);

}

