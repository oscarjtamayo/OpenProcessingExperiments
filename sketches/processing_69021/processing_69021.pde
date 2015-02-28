
//Martin C, Penguin, CP1 mods 4-5

//sand
background(240,202,65);
size(600,380);
smooth();

//sky
noStroke();
fill(15,193,255);
quad(0,0,600,0,600,320,0,320);

//water
fill(37,206,174);
quad(600,320,0,320,0,290,600,290);

//borders
stroke(0);
strokeWeight(2);
line(0,320,600,320);
line(0,290,600,290);

//sun
fill(255,196,46);
ellipse(490,70,90,90);

//trunk
fill(165,101,32);
quad(50,105,80,105,80,360,50,360);

//leaves
fill(72,160,44);
quad(65,110,100,100,150,110,100,80);
quad(65,110,65-35,100,65-85,110,65-35,80);
quad(55,110,80,80,130,90,80,100);
quad(75,110,65-15,80,0,90,65-15,100);

//head
fill(28,134,28);
ellipse(470,290,100,50);

//tail
fill(17,77,17);
triangle(175,285,175,310,125,310); 

//background legs
quad(340,310,365,355,385,350,400,250); 
quad(300-40,310,300-65,355,300-85,350,200,250);

//shell underside
fill(116,111,22); 
arc(300,300,280,60,0,PI);

//foreground legs
fill(17,77,17); 
quad(335,300,405,300,425,330,400,355);
quad(300-35,300,300-105,300,300-125,330,200,355);

//shell
stroke(0);
strokeWeight(2); 
fill(28,134,28);
arc(300,300,300,150,PI,2*PI);
arc(300,300,300,20,0,PI);

//shell grooves
line(190,250,250,310);
line(410,250,350,310);
line(250,310,300,225);
line(350,310,300,225);

//eye
fill(0); 
ellipse(495,285,5,5); 

//mouth
noFill(); 
arc(505,285,80,40,5.5*PI/12,9*PI/12);