
void setup() {

size(500,500);


}

void draw() { 

fill(180,90,0);
rect(0,0,250,250);
fill(255,0,0);
triangle(250,250,250,0,500,250);

fill(255);
triangle(250,250,250,0,500,0);

fill(150,0,255);
triangle(500,250,500,0,375,125);

fill(0,255,0);
quad(80,311,155,455,330,355,250,250);

fill(180,0,90);
ellipse(425,75,100,100);
fill(0,200,130);
rect(400,50,50,50);

fill(255);
ellipse(444, 50, 25, 25);

fill(0,130,255);
quad(250, 390, 430, 360, 480, 300, 270, 320);

fill(250,180,0);
quad(340, 426, 370, 550, 580, 500, 370, 426);

fill(255,0,0);
quad(370, 426, 630, 570, 580, 400, 370, 400);

fill(180,0,0);
rect(25,220,140,230);

fill(200,90,60);
rect(230,365,170,65);

fill(180,200,80);
rect(0,400,280,80);

fill(180,0,90); 
triangle(-20,-30,190,380,370,280);

fill(0,200,130);
triangle(500,120,260,280, 500,480);

fill(230,220,0);
ellipse(400,315,170,170);
fill(255);
ellipse(430,270,40,40);

fill(255,190,0);
quad(220, 0, 250, 0, 0, 450, 0, 170);

fill(80,130,180);
quad(0,470,0,500,410,500,320,410);

fill(0,255,255);
ellipse(255,395,70,70);
fill(255);
ellipse(265,376,15,15);

//Start of lines
line(0,500,140,0);
line(50,500,140,0);
line(100,500,140,0);
line(150,500,140,0);
line(200,500,140,0);
line(250,500,140,0);
line(300,500,140,0);
line(350,500,140,0);
line(400,500,140,0);
line(450,500,140,0);
line(500,500,140,0);

//end of lines


/*
//points x25
point(25,25);
point(25,50);
point(25,75);
point(25,100);
point(25,125);
point(25,150);
point(25,175);
point(25,200);
point(25,225);
point(25,250);
point(25,275);
point(25,300);
point(25,325);
point(25,350);
point(25,375);
point(25,400);
point(25,425);
point(25,450);
point(25,475);
point(25,500);
//endx25

// x50
point(50,25);
point(50,50);
point(50,75);
point(50,100);
point(50,125);
point(50,150);
point(50,175);
point(50,200);
point(50,225);
point(50,250);
point(50,275);
point(50,300);
point(50,325);
point(50,350);
point(50,375);
point(50,400);
point(50,425);
point(50,450);
point(50,475);
point(50,500);
//end x50

//x75
point(75,25);
point(75,50);
point(75,75);
point(75,100);
point(75,125);
point(75,150);
point(75,175);
point(75,200);
point(75,225);
point(75,250);
point(75,275);
point(75,300);
point(75,325);
point(75,350);
point(75,375);
point(75,400);
point(75,425);
point(75,450);
point(75,475);
point(75,500);
//end
//x100
point(100,25);
point(100,50);
point(100,100);
point(100,75);
point(100,100);
point(100,125);
point(100,150);
point(100,175);
point(100,200);
point(100,225);
point(100,250);
point(100,275);
point(100,300);
point(100,325);
point(100,350);
point(100,375);
point(100,400);
point(100,425);
point(100,450);
point(100,475);
point(100,500);
//end
//x125
point(125,25);
point(125,50);
point(125,125);
point(125,75);
point(125,100);
point(125,125);
point(125,150);
point(125,175);
point(125,200);
point(125,225);
point(125,250);
point(125,275);
point(125,300);
point(125,325);
point(125,350);
point(125,375);
point(125,400);
point(125,425);
point(125,450);
point(125,475);
point(125,500);
//end
//x150
point(150,25);
point(150,50);
point(150,150);
point(150,75);
point(150,100);
point(150,125);
point(150,150);
point(150,175);
point(150,200);
point(150,225);
point(150,250);
point(150,275);
point(150,300);
point(150,325);
point(150,350);
point(150,375);
point(150,400);
point(150,425);
point(150,450);
point(150,475);
point(150,500);
//end
//175
point(175,25);
point(175,50);
point(175,175);
point(175,75);
point(175,100);
point(175,125);
point(175,150);
point(175,175);
point(175,200);
point(175,225);
point(175,250);
point(175,275);
point(175,300);
point(175,325);
point(175,350);
point(175,375);
point(175,400);
point(175,425);
point(175,450);
point(175,475);
point(175,500);
//end
//200
point(200,25);
point(200,50);
point(200,200);
point(200,75);
point(200,100);
point(200,125);
point(200,150);
point(200,175);
point(200,200);
point(200,225);
point(200,250);
point(200,275);
point(200,300);
point(200,325);
point(200,350);
point(200,375);
point(200,400);
point(200,425);
point(200,450);
point(200,475);
point(200,500);
//end
//225
point(225,25);
point(225,50);
point(225,75);
point(225,225);
point(225,75);
point(225,100);
point(225,125);
point(225,150);
point(225,175);
point(225,200);
point(225,225);
point(225,250);
point(225,275);
point(225,300);
point(225,325);
point(225,350);
point(225,375);
point(225,400);
point(225,425);
point(225,450);
point(225,475);
point(225,500);
//end
//250;
point(250,25);
point(250,50);
point(250,75);
point(250,250);
point(250,100);
point(250,125);
point(250,150);
point(250,175);
point(250,200);
point(250,225);
point(250,250);
point(250,275);
point(250,300);
point(250,325);
point(250,350);
point(250,375);
point(250,400);
point(250,425);
point(250,450);
point(250,475);
point(250,500);
//end
//275
point(275,25);
point(275,50);
point(275,75);
point(275,275);
point(275,100);
point(275,125);
point(275,150);
point(275,175);
point(275,200);
point(275,225);
point(275,250);
point(275,275);
point(275,300);
point(275,325);
point(275,350);
point(275,375);
point(275,400);
point(275,425);
point(275,450);
point(275,475);
point(275,500);
//end
//300
point(300,25);
point(300,50);
point(300,75);
point(300,300);
point(300,100);
point(300,125);
point(300,150);
point(300,175);
point(300,200);
point(300,225);
point(300,250);
point(300,275);
point(300,300);
point(300,325);
point(300,350);
point(300,375);
point(300,400);
point(300,425);
point(300,450);
point(300,475);
point(300,500);
//end
// /*
//325
point(325,25);
point(325,50);
point(325,75);
point(325,325);
point(325,100);
point(325,125);
point(325,150);
point(325,175);
point(325,200);
point(325,225);
point(325,250);
point(325,275);
point(325,300);
point(325,325);
point(325,350);
point(325,375);
point(325,400);
point(325,425);
point(325,450);
point(325,475);
point(325,500);
//end
//350
point(350,25);
point(350,50);
point(350,75);
point(350,350);
point(350,100);
point(350,125);
point(350,150);
point(350,175);
point(350,200);
point(350,225);
point(350,250);
point(350,275);
point(350,300);
point(350,325);
point(350,350);
point(350,375);
point(350,400);
point(350,425);
point(350,450);
point(350,475);
point(350,500);
//end
//375
point(375,25);
point(375,50);
point(375,75);
point(375,375);
point(375,100);
point(375,125);
point(375,150);
point(375,175);
point(375,200);
point(375,225);
point(375,250);
point(375,275);
point(375,300);
point(375,325);
point(375,350);
point(375,375);
point(375,400);
point(375,425);
point(375,450);
point(375,475);
point(375,500);
//end
//400
point(400,25);
point(400,50);
point(400,75);
point(400,400);
point(400,100);
point(400,125);
point(400,150);
point(400,175);
point(400,200);
point(400,225);
point(400,250);
point(400,275);
point(400,300);
point(400,325);
point(400,350);
point(400,375);
point(400,400);
point(400,425);
point(400,450);
point(400,475);
point(400,500);
//end
//425
point(425,25);
point(425,50);
point(425,75);
point(425,425);
point(425,100);
point(425,125);
point(425,150);
point(425,175);
point(425,200);
point(425,225);
point(425,250);
point(425,275);
point(425,300);
point(425,325);
point(425,350);
point(425,375);
point(425,400);
point(425,425);
point(425,450);
point(425,475);
point(425,500);
//end
//450
point(450,25);
point(450,50);
point(450,75);
point(450,450);
point(450,100);
point(450,125);
point(450,150);
point(450,175);
point(450,200);
point(450,225);
point(450,250);
point(450,275);
point(450,300);
point(450,325);
point(450,350);
point(450,375);
point(450,400);
point(450,425);
point(450,450);
point(450,475);
point(450,500);
//end
//475
point(475,25);
point(475,50);
point(475,75);
point(475,475);
point(475,100);
point(475,125);
point(475,150);
point(475,175);
point(475,200);
point(475,225);
point(475,250);
point(475,275);
point(475,300);
point(475,325);
point(475,350);
point(475,375);
point(475,400);
point(475,425);
point(475,450);
point(475,475);
point(475,500);
//end
*/


}


