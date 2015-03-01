
size(600,600);
background(190);

//PORTES
noStroke();
fill(235);
arc(105,80,65,65,PI,TWO_PI,OPEN);
rect(72.5,80,65,450);
arc(202.5,155,45,45,PI,TWO_PI,OPEN);
rect(180,155,45,350);
arc(270,200,30,30,PI,TWO_PI,OPEN);
rect(255,200,30,280);
arc(320,240,20,20,PI,TWO_PI,OPEN);
rect(310,240,20,220);
arc(354.5,270,15,15,PI,TWO_PI,OPEN);
rect(347,270,15,185);
arc(380,293,13,13,PI,TWO_PI,OPEN);
rect(373.5,293,13,145);
arc(400,310,9,9,PI,TWO_PI,OPEN);
rect(395.5,310,9,110);
arc(416,322,7,7,PI,TWO_PI,OPEN);
rect(412.5,322,7,95);
arc(428,333,5,5,PI,TWO_PI,OPEN);
rect(425.5,333,5,80);

//TERRA
fill(150);
triangle(0,530,600,360,600,530);
arc(80,80,15,40,PI,TWO_PI,OPEN);
rect(72.5,80,15,440);
triangle(72.5,491,139,491,72.5,510);
arc(186.5,155,13,30,PI,TWO_PI,OPEN);
rect(180,155,13,340);
triangle(180,466,227,466,180,485);
arc(260.5,200,11,23,PI,TWO_PI,OPEN);
rect(255,200,11,270);
triangle(255,449,287,449,255,460);
arc(314.5,240,9,17,PI,TWO_PI,OPEN);
rect(310,240,9,210);
triangle(310,437,332,437,310,445);
arc(350,270,6,12,PI,TWO_PI,OPEN);
rect(347,270,6,175);
triangle(347,427,364,427,347,433);
arc(375.5,293,4,9,PI,TWO_PI,OPEN);
rect(373.5,293,4,135);
triangle(373.5,421,389,421,373.5,425);
arc(397,310,3,7,PI,TWO_PI,OPEN);
rect(395.5,310,3,105);
triangle(395.5,415,406,415,395.5,420);
arc(413.5,322,2,5,PI,TWO_PI,OPEN);
rect(412.5,322,2,95);
triangle(412.5,411,421,411,412.5,414);
arc(426,333,1,2,PI,TWO_PI,OPEN);
rect(425.5,333,1,80);
triangle(425.3,408,431,408,425.3,411);
rect(0,530,600,70);

//PARET I SOSTRE
fill(170);
rect(440,325,165,80);
fill(220);
triangle(150,0,440,325,440,0);
rect(440,0,164,325);

//HOME
fill(245,201,148);
stroke(245,201,148);
ellipse(500,390,30,37);
rect(496.5,392,7,30);
fill(9,178,165);
stroke(9,178,165);
strokeWeight(13);
line(490,472,489,532);
line(510,472,511,532);
rect(495,473,10,10);
fill(40,245,229);
stroke(40,245,229);
strokeWeight(10);
line(456,442,483,422);
line(517,422,545,442);
strokeWeight(1);
rect(480,412,40,60,15);
stroke(0);
strokeWeight(3);
point(496,387);
point(504,387);
strokeWeight(2);
point(500,393);
stroke(255,0,0);
strokeWeight(7);
point(500,400);
stroke(245,201,148);
strokeWeight(12);
point(456,442);
point(545,442);
stroke(167,104,0);
strokeWeight(15);
point(489,532);
point(511,532);

//BOMBOLLA
fill(50,110,100);
noStroke();
ellipse(450,150,250,200);
triangle(500,360,410,180,470,180);
fill(255);
rect(380,120,10,70);
rect(400,120,10,70);
rect(385,150,20,10);
rect(460,120,10,70);
rect(460,180,20,10);
rect(500,155,15,10);
noFill();
stroke(255);
strokeWeight(10);
ellipse(435,155,20,60);
line(490,185,507,122);
line(507,122,524,185);
