
size(600, 550);
background(108, 44, 23);
smooth();

//white oval
noStroke();
fill(211, 206, 205);
bezier(100, 10, 280, 20, 90, 70, 100, 100);
//top left
bezier(100, 10, 5, 20, 90, 90, 100, 100);
//top right
bezier(178, 27, 303, 200, 103, 102, 90, 92);
//top 
bezier(218, 119, 190, 200, 120, 140, 89, 120);
//top left
bezier(56, 30, 40, 70, 25, 100, 130, 170);
//bottom
bezier(129, 170, 180, 172, 240, 156, 100, 100);
//bottom left
bezier(50, 90, 110, 220, 170, 150, 200, 100);

ellipse(130, 142, 55, 55);
ellipse(130, 115, 100, 100);
ellipse(125, 80, 145, 145);
ellipse(160, 120, 100, 100);

//mouth
fill(0, 0, 0);
bezier(110, 100, 130, 140, 150, 140, 165, 90);
fill(211, 206, 205);
bezier(109, 99, 130, 130, 140, 130, 164, 89);

stroke(0, 0, 0);
line(150, 170, 150, 490);

//eyes
fill(0, 0, 0);
ellipse(110, 60, 1, 1);
ellipse(160, 60, 1, 1);

//black rect.
quad(100, 450, 200, 450, 200, 495, 100, 500);
bezier(90,447,140,450,160,450,100,500);
bezier(92,500,140,500,160,450,100,460);


// small white shape
noStroke();
fill(211, 206, 205);
ellipse(420,40,20,15);
bezier(430,43,405,55,420,55,425,50);

// small black shape
fill(0);
ellipse(410,45,15,20);
bezier(405,50,405,55,420,55,425,50);
//bezier(400,50,365,65,395,70,395,75);
//beginShape();
//vertex(400,50);
//vertex(395,55);
//vertex(395,65);
//vertex(398,65);
//endShape();

//dashed lines
stroke(0);
strokeWeight(3);
line(40,550,45,545);
line(60,527,65,524);
line(80,500,85,495);
line(210,450,215,447);
strokeWeight(4);
line(240,435,245,433);
line(270,420,278,417);
line(310,400,315,397);
line(330,385,335,383);
line(360,380,370,380);
line(390,380,398,380);
line(430,380,440,380);
line(470,378,480,378);
line(510,382,518,382);
line(540,382,552,382);
line(580,382,585,382);

line(345,370,345,375);
line(345,335,345,340);
line(345,300,345,310);
line(345,280,345,285);
line(347,255,347,265);
line(347,230,347,235);
line(349,200,349,210);
line(349,160,349,170);
line(350,120,350,127);
line(350,100,350,107);
line(350,70,350,62);
line(350,40,350,32);
line(350,10,350,12);

