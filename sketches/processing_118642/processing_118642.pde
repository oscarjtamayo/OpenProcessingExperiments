
int posicioY = 0;
int posicioX = 0;

void setup() {
  size(750,700);
  background(148, 184, 219);
}

void draw() {
  background(148, 184, 219);
    //flecha1
line(25,posicioX+50,15,posicioX+25);
line(25,posicioX+50,35,posicioX+25);
line(25,posicioY,25,posicioY+50);
posicioY = posicioY+2;
posicioX = posicioX+2;
//flecha2

line(100,posicioX+50,90,posicioX+25);
line(100,posicioX+50,110,posicioX+25);
line(100,posicioY,100,posicioY+50);

line(150,posicioX+50,140,posicioX+25);
line(150,posicioX+50,160,posicioX+25);
line(150,posicioY,150,posicioY+50);

line(200,posicioX+50,190,posicioX+25);
line(200,posicioX+50,210,posicioX+25);
line(200,posicioY,200,posicioY+50);

line(300,posicioX+50,290,posicioX+25);
line(300,posicioX+50,310,posicioX+25);
line(300,posicioY,300,posicioY+50);

line(400,posicioX+50,390,posicioX+25);
line(400,posicioX+50,410,posicioX+25);
line(400,posicioY,400,posicioY+50);

line(600,posicioX+50,590,posicioX+25);
line(600,posicioX+50,610,posicioX+25);
line(600,posicioY,600,posicioY+50);
  
  
  
  //cara
  fill(255,153,51);
  stroke(255,153,51);
  ellipse(375,400,400,400);
  
  //casco
  stroke(153,153,153);
  fill(153,153,153);
  rect(125,200,500,100);
  rect(125,300,75,200);
  rect(550,300,75,200);
  triangle(125,200,350,200,350,100);
  triangle(625,200,400,200,400,100);
  rect(350,120,50,100);
  triangle(200,500,200,575,275,575);
  triangle(125,500,200,575,200,500);
  triangle(550,500,550,575,475,575);
  triangle(625,500,550,575,550,500);
  stroke(0,0,0);
  line(125,250,625,250);
  line(625,200,125,200);
  line(200,345,125,345);
  line(550,345,625,345);
  line(200,500,125,500);
  line(550,500,625,500);
  
  //laurel casco
  
  stroke(0,102,0);
  fill(0,102,0);
  ellipse(375,225,10,10);
  triangle(380,225,400,205,420,205);
  triangle(380,225,420,205,410,220);
  triangle(420,225,440,205,460,205);
  triangle(420,225,460,205,450,220);
  triangle(460,225,480,205,500,205);
  triangle(460,225,500,205,490,220);
  triangle(500,225,520,205,540,205);
  triangle(500,225,540,205,530,220);
  triangle(540,225,560,205,580,205);
  triangle(540,225,580,205,570,220);
  triangle(580,225,600,205,620,205);
  triangle(580,225,620,205,610,220);
  
  triangle(370,225,350,245,330,245);
  triangle(370,225,330,245,340,230);
  triangle(330,225,310,245,290,245);
  triangle(330,225,290,245,300,230);
  triangle(290,225,270,245,250,245);
  triangle(290,225,250,245,260,230);
  triangle(250,225,230,245,210,245);
  triangle(250,225,210,245,220,230);
  triangle(210,225,190,245,170,245);
  triangle(210,225,170,245,180,230);
  triangle(170,225,150,245,130,245);
  triangle(170,225,130,245,140,230);
  
  triangle(350,225,330,205,310,205);
  triangle(350,225,310,205,320,220);
  triangle(310,225,290,205,270,205);
  triangle(310,225,270,205,280,220);
  triangle(270,225,250,205,230,205);
  triangle(270,225,230,205,240,220);
  triangle(230,225,210,205,190,205);
  triangle(230,225,190,205,200,220);
  triangle(190,225,170,205,150,205);
  triangle(190,225,150,205,160,220);
  
  triangle(400,225,420,245,440,245);
  triangle(400,225,440,245,430,230);
  triangle(440,225,460,245,480,245);
  triangle(440,225,480,245,470,230);
  triangle(480,225,500,245,520,245);
  triangle(480,225,520,245,510,230);
  triangle(520,225,540,245,560,245);
  triangle(520,225,560,245,550,230);
  triangle(560,225,580,245,600,245);
  triangle(560,225,600,245,590,230);
  
  //cresta casco
  stroke(204,0,0);
  fill(204,0,0);
  triangle(400,100,450,30,400,30);
  triangle(350,100,350,30,300,30);
  rect(350,30,50,90);
  
  //ojos
  stroke(0,0,0);
  fill(0,0,0);
  ellipse(285,380,55,55);
  ellipse(465,380,55,55);
  stroke(255,255,255);
  fill(255,255,255);
  ellipse(465,370,random(20,30),25);
  ellipse(285,370,random(20,30),25);
 
  
  //cejas
  stroke(0,0,0);
  fill(0,0,0);
  triangle(240,340,265,335,275,315);
  triangle(265,335,275,315,290,345);
  triangle(290,345,282,329,300,345);
  triangle(300,345,290,335,330,335);
  
  triangle(510,340,475,315,485,335);
  triangle(485,335,460,345,475,315);
  triangle(468,329,460,345,450,345);
  triangle(460,335,420,335,450,345);
  
  //boca
  ellipse(375,530,100,100);
  stroke(255,153,51);
  fill(255,153,51);
  ellipse(375,534,100,100);
  
  //cuello
  rect(325,530,100,150);
  
  //entreceja
  stroke(0,0,0);
  fill(0,0,0);
  line(360,320,365,350);
  line(390,320,385,350);
  
  //nariz
  stroke(0,0,0);
  fill(255,153,51);
  ellipse(375,425,75,45);
  stroke(255,153,51);
  ellipse(400,455,15,50);
  ellipse(350,455,15,50);
  

  
  
   println(mouseX+","+mouseY); 

}
void mousePressed(){
  background(150,50,150);
}
  





