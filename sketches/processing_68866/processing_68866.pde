
//Will Slotterback, Penguin, CP1 16/17 
//WillS
size(800,600);
background(95,93,255);
strokeWeight(5);
stroke(21,53,85);
fill(21,53,85);
arc(130,270,240,240,PI,TWO_PI-PI/2);
beginShape();
vertex(10,270);
vertex(8,320);
vertex(230,350);
vertex(230,270);
endShape(CLOSE);
beginShape();
vertex(230,350);
vertex(40,360);
vertex(230,360);
endShape(CLOSE);
arc(130,360,180,180,PI/2,PI);
beginShape();
curveVertex(130,450);
curveVertex(130,450);
curveVertex(280,443);
curveVertex(570,400);
curveVertex(640,360);
curveVertex(680,240);
curveVertex(700,210);
curveVertex(750,220);
curveVertex(793,200);
curveVertex(740,170);
curveVertex(695,180);
curveVertex(680,160);
curveVertex(640,150);
curveVertex(600,160);
curveVertex(625,190);
curveVertex(665,200);
curveVertex(605,260);
curveVertex(480,190);
curveVertex(330,165);
curveVertex(330,165);
endShape(CLOSE);
beginShape();
curveVertex(330,165);
curveVertex(330,165);
curveVertex(130,150);
curveVertex(130,150);
vertex(11,320);
vertex(330,320);
endShape(CLOSE);
triangle(130,360,200,360,130,446);
//end of the base body of the whale
//details:
fill(255);
stroke(0);
strokeWeight(3);
ellipse(190,290,23,40);
fill(0);
ellipse(186,295,14,19);
fill(255);
ellipse(183.5,296,7,8);
fill(0);
ellipse(45,270,6,17);
ellipse(30,270,6,17);
fill(255);
stroke(0);
strokeWeight(1);
ellipse(460,222,50,40);
ellipse(400,205,35,32);
ellipse(415,240,20,14);
ellipse(500,240,14,15);
ellipse(350,180,45,25);
ellipse(350,225,28,30);
//belly of the whale (overlap)
noStroke();
fill(255);
beginShape();
vertex(230,350);
vertex(40,360);
vertex(230,360);
endShape(CLOSE);
arc(130,360,180,180,PI/2,PI);
beginShape();
curveVertex(130,450);
curveVertex(130,450);
curveVertex(280,443);
curveVertex(570,400);
curveVertex(600,363);
curveVertex(230,350);
vertex(230,350);
endShape(CLOSE);
triangle(130,360,250,360,130,450);
stroke(0);
noFill();
beginShape();
curveVertex(50,360);
curveVertex(50,360);
curveVertex(55,395);
curveVertex(70,428);
curveVertex(70,428);
endShape();
beginShape();
curveVertex(90,357);
curveVertex(90,357);
curveVertex(95,395);
curveVertex(120,450);
curveVertex(120,450);
endShape();
beginShape();
curveVertex(140,355);
curveVertex(140,355);
curveVertex(145,395);
curveVertex(170,450);
curveVertex(170,450);
endShape();
beginShape();
curveVertex(182,365);
curveVertex(182,365);
curveVertex(195,405);
curveVertex(225,448);
curveVertex(225,448);
endShape();
beginShape();
curveVertex(235,390);
curveVertex(235,390);
curveVertex(245,410);
curveVertex(275,443);
curveVertex(275,443);
endShape();
beginShape();
curveVertex(292,400);
curveVertex(292,400);
curveVertex(305,420);
curveVertex(330,437);
curveVertex(330,437);
endShape();
fill(0);
ellipse(200,170,30,12);
//bubbles:
fill(191,251,251);
stroke(255);
strokeWeight(2);
ellipse(200,150,13,13);
ellipse(210,140,8,8);
ellipse(195,132,15,15);
ellipse(205,110,12,12);
ellipse(185,112,6,6);
ellipse(225,85,18,18);
ellipse(170,60,20,19);
ellipse(190,88,13,13);
ellipse(210,76,6,6);
ellipse(218,43,23,23);
