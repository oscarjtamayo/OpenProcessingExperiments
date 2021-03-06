
//praticeProcessing D2,by chen, wu-zhi

void setup() {
  background(236, 235, 230);
  size(635, 793);
  smooth();
}

void draw() {

  if (mousePressed) {
    background(236, 235, 230);
    //object curve 40
    stroke(0);
    fill(random(mouseX),random(mouseY),random(mouseX),random(mouseY));
    for (int i = 1 ; i < 20 ; i++) {
      rotate( (PI/20)*i );
      beginShape();
      curveVertex(476, 192);
      curveVertex(476, 192);
      curveVertex(462, 188);
      curveVertex(454, 175);
      curveVertex(456, 161);
      curveVertex(467, 152);
      curveVertex(501, 138);
      curveVertex(538, 138);
      curveVertex(572, 152);
      curveVertex(598, 178);
      curveVertex(621, 217);
      curveVertex(631, 262);
      curveVertex(631, 308);
      curveVertex(626, 353);
      curveVertex(607, 397);
      curveVertex(575, 433);
      curveVertex(544, 444);
      curveVertex(513, 436);
      curveVertex(508, 430);
      curveVertex(506, 423);
      curveVertex(508, 399);
      curveVertex(521, 378);
      curveVertex(538, 355);
      curveVertex(555+random(0, 20), 332);
      curveVertex(572+random(0, 20), 299);
      curveVertex(576+random(0, 20), 262);
      curveVertex(575+random(0, 20), 238);
      curveVertex(566+random(0, 20), 215);
      curveVertex(557+random(0, 20), 205);
      curveVertex(544+random(0, 20), 198);
      curveVertex(510, 193);
      curveVertex(476, 192);
      curveVertex(476, 192);
      endShape();
    }

    //object ellipse 25
    fill(197, 62, 6);
    stroke(197, 62, 6);
    ellipse(143, 118, 80, 80);
    //object curve 34
    fill(30, 63, 10);
    stroke(30, 63, 10);
    curveTightness(-0.5); 
    beginShape();
    curveVertex(270, 308);
    curveVertex(270, 308);
    curveVertex(211, 298);
    curveVertex(161, 265);
    curveVertex(145, 231);
    curveVertex(137, 195);
    curveVertex(135, 169);
    curveVertex(141, 143);
    curveVertex(154, 121);
    curveVertex(173, 102);
    curveVertex(208, 76);
    curveVertex(245, 53);
    curveVertex(299, 26);
    curveVertex(356, 9);
    curveVertex(356, 9);
    endShape();

    //object 34-1
    stroke(236, 235, 230);
    strokeWeight(2);
    line(356, 9, 270, 308);

    //object curve 35
    fill(236, 235, 230);
    strokeWeight(2);
    beginShape();
    curveVertex(270, 308);
    curveVertex(270, 308);
    curveVertex(255, 274);
    curveVertex(247, 237);
    curveVertex(247, 200);
    curveVertex(256, 164);
    curveVertex(271, 120);
    curveVertex(293, 78);
    curveVertex(322, 41);
    curveVertex(356, 9);
    curveVertex(356, 9);
    endShape();

    //object O
    fill(0);
    stroke(0);
    strokeWeight(2);
    beginShape();
    curveVertex(270, 308);
    curveVertex(270, 308);
    curveVertex(224, 302);
    curveVertex(182, 283);
    curveVertex(182, 283);
    endShape();
    fill(0);
    stroke(0);
    strokeWeight(2);
    beginShape();
    curveVertex(182, 283);
    curveVertex(182, 283);
    curveVertex(213, 244);
    curveVertex(247, 208);
    endShape();
    triangle(270, 308, 182, 283, 247, 208);
    fill(236, 235, 230);
    stroke(236, 235, 230);
    strokeWeight(0);
    beginShape();
    curveVertex(247, 208);
    curveVertex(247, 208);
    curveVertex(251, 260);
    curveVertex(270, 308);
    curveVertex(270, 308);
    endShape();
    strokeWeight(3);
    line(247, 208, 270, 308); 

    //object P
    fill(0);
    stroke(0);
    strokeWeight(2);
    beginShape();
    curveVertex(179, 98);
    curveVertex(179, 98);
    curveVertex(177, 141);
    curveVertex(137, 158);
    curveVertex(137, 158);
    endShape();
    beginShape();
    curveVertex(179, 98);
    curveVertex(179, 98);
    curveVertex(152, 124);
    curveVertex(137, 158);
    curveVertex(137, 158);
    endShape();
    //object curve 31
    noFill();
    stroke(0);
    curveTightness(-0.1); 
    beginShape();
    curveVertex(32, 111);
    curveVertex(32, 111);
    curveVertex(26, 84);
    curveVertex(38, 60);
    curveVertex(64, 51);
    curveVertex(89, 60);
    curveVertex(89, 60);
    endShape();
    beginShape();
    curveVertex(89, 60);
    curveVertex(89, 60);
    curveVertex(104, 72);
    curveVertex(118, 86);
    curveVertex(118, 86);
    endShape();

    //object curve 32
    beginShape();
    curveVertex(49, 168);
    curveVertex(49, 168);
    curveVertex(43, 149);
    curveVertex(44, 129);
    curveVertex(52, 110);
    curveVertex(65, 95);
    curveVertex(65, 95);
    endShape();
    beginShape();
    curveVertex(65, 95);
    curveVertex(65, 95);
    curveVertex(80, 89);
    curveVertex(95, 92);
    curveVertex(95, 92);
    endShape();
    beginShape();
    curveVertex(95, 92);
    curveVertex(95, 92);
    curveVertex(101, 96);
    curveVertex(107, 100);
    curveVertex(107, 100);
    endShape();

    //object curve 33
    beginShape();
    curveVertex(93, 188);
    curveVertex(93, 188);
    curveVertex(79, 178);
    curveVertex(69, 163);
    curveVertex(65, 145);
    curveVertex(66, 127);
    curveVertex(66, 127);
    endShape();
    beginShape();
    curveVertex(66, 127);
    curveVertex(66, 127);
    curveVertex(71, 116);
    curveVertex(80, 109);
    curveVertex(93, 109);
    curveVertex(103, 115);
    curveVertex(103, 115);
    endShape();

    //object 27
    fill(220, 47, 7);
    stroke(220, 47, 7);
    strokeWeight(0);
    ellipse(560, 146, 47, 47);

    //add object I
    fill(0);
    stroke(0);
    strokeWeight(2);
    beginShape();
    curveVertex(538, 138);
    curveVertex(538, 138);
    curveVertex(549, 124);
    curveVertex(568, 122);
    curveVertex(583, 138);
    curveVertex(580, 158);
    curveVertex(580, 158);
    endShape();
  }
  else {
    background(236, 235, 230);
    //object curve 40
    stroke(0);
    noFill();
    strokeWeight(random(0, 5));
    beginShape();
    curveVertex(476, 192);
    curveVertex(476, 192);
    curveVertex(462, 188);
    curveVertex(454, 175);
    curveVertex(456, 161);
    curveVertex(467, 152);
    curveVertex(501, 138);
    curveVertex(538, 138);
    curveVertex(572, 152);
    curveVertex(598, 178);
    curveVertex(621, 217);
    curveVertex(631, 262);
    curveVertex(631, 308);
    curveVertex(626, 353);
    curveVertex(626, 353);
    curveVertex(607, 397);
    curveVertex(575, 433);
    curveVertex(575, 433);
    curveVertex(544, 444);
    curveVertex(513, 436);
    curveVertex(508, 430);
    curveVertex(506, 423);
    curveVertex(508, 399);
    curveVertex(521, 378);
    curveVertex(538, 355);
    curveVertex(555, 332);
    curveVertex(572, 299);
    curveVertex(576, 262);
    curveVertex(575, 238);
    curveVertex(566, 215);
    curveVertex(557, 205);
    curveVertex(544, 198);
    curveVertex(510, 193);
    curveVertex(476, 192);
    curveVertex(476, 192);
    endShape();  
    //object curve 34
    fill(30, 63, 10);
    stroke(30, 63, 10);
    strokeWeight(random(0.05*mouseX));
    curveTightness(-0.5); 
    beginShape();
    curveVertex(270+random(0, 30), 308+random(0, 30));
    curveVertex(270+random(0, 30), 308+random(0, 30));
    curveVertex(211+random(0, 30), 298+random(0, 30));
    curveVertex(161+random(0, 30), 265+random(0, 30));
    curveVertex(145+random(0, 30), 231+random(0, 30));
    curveVertex(137+random(0, 30), 195+random(0, 30));
    curveVertex(135+random(0, 30), 169+random(0, 30));
    curveVertex(141+random(0, 30), 143+random(0, 30));
    curveVertex(154+random(0, 30), 121+random(0, 30));
    curveVertex(173+random(0, 30), 102+random(0, 30));
    curveVertex(208+random(0, 30), 76+random(0, 30));
    curveVertex(245+random(0, 30), 53+random(0, 30));
    curveVertex(299+random(0, 30), 26+random(0, 30));
    curveVertex(356+random(0, 30), 9+random(0, 30));
    curveVertex(356+random(0, 30), 9+random(0, 30));
    endShape();
    //object curve 35
    fill(236, 235, 230);
    strokeWeight(2);
    beginShape();
    curveVertex(270+random(0, 100), 308+random(0, 100));
    curveVertex(270+random(0, 100), 308+random(0, 100));
    curveVertex(255+random(0, 100), 274+random(0, 100));
    curveVertex(247+random(0, 100), 237+random(0, 100));
    curveVertex(247+random(0, 100), 200+random(0, 100));
    curveVertex(256+random(0, 100), 164+random(0, 100));
    curveVertex(271+random(0, 100), 120+random(0, 100));
    curveVertex(293+random(0, 100), 78+random(0, 100));
    curveVertex(322+random(0, 100), 41+random(0, 100));
    curveVertex(356+random(0, 100), 9+random(0, 100));
    curveVertex(356+random(0, 100), 9+random(0, 100));
    endShape();


    //object ellipse 25
    fill(197, 62, 6);
    stroke(197, 62, 6);
    strokeWeight(random(0.05*mouseX));
    ellipse(143, 118, 80+random(0, mouseX/100), 80+random(0, mouseX/100));
    //object curve 31
    noFill();
    strokeWeight(random(0.05*mouseX));
    stroke(0);
    curveTightness(-0.1); 
    beginShape();
    curveVertex(32, 111);
    curveVertex(32, 111);
    curveVertex(26, 84);
    curveVertex(38, 60);
    curveVertex(64, 51);
    curveVertex(89, 60);
    curveVertex(89, 60);
    endShape();
    beginShape();
    curveVertex(89, 60);
    curveVertex(89, 60);
    curveVertex(104, 72);
    curveVertex(118, 86);
    curveVertex(118, 86);
    endShape();

    //object curve 32
    strokeWeight(random(0.05*mouseX));
    beginShape();
    curveVertex(49, 168);
    curveVertex(49, 168);
    curveVertex(43, 149);
    curveVertex(44, 129);
    curveVertex(52, 110);
    curveVertex(65, 95);
    curveVertex(65, 95);
    endShape();
    beginShape();
    curveVertex(65, 95);
    curveVertex(65, 95);
    curveVertex(80, 89);
    curveVertex(95, 92);
    curveVertex(95, 92);
    endShape();
    beginShape();
    curveVertex(95, 92);
    curveVertex(95, 92);
    curveVertex(101, 96);
    curveVertex(107, 100);
    curveVertex(107, 100);
    endShape();

    //object curve 33
    strokeWeight(random(0.05*mouseX));
    beginShape();
    curveVertex(93, 188);
    curveVertex(93, 188);
    curveVertex(79, 178);
    curveVertex(69, 163);
    curveVertex(65, 145);
    curveVertex(66, 127);
    curveVertex(66, 127);
    endShape();
    beginShape();
    curveVertex(66, 127);
    curveVertex(66, 127);
    curveVertex(71, 116);
    curveVertex(80, 109);
    curveVertex(93, 109);
    curveVertex(103, 115);
    curveVertex(103, 115);
    endShape();

    //object 27
    fill(220, 47, 7);
    stroke(220, 47, 7);
    strokeWeight(0);
    ellipse(560, 146, 47+mouseX/10, 47+mouseX/10);
    //add object I
    fill(0);
    stroke(0);
    strokeWeight(2);
    beginShape();
    curveVertex(538, 138);
    curveVertex(538, 138);
    curveVertex(549, 124);
    curveVertex(568, 122);
    curveVertex(583, 138);
    curveVertex(580, 158);
    curveVertex(580, 158);
    endShape();
  }


  strokeWeight(random(0.05*mouseX));
  //object 42-46
  fill(216, 51, 3);
  stroke(216, 51, 3);
  quad(389, 536, 421, 536, 424, 556, 389, 556);
  quad(336, 517, 361, 517, 361, 537, 335, 537);
  quad(230, 590, 299, 605, 294, 648, 240, 650);
  quad(294, 648, 361, 651, 361, 694, 288, 693);
  quad(361, 623, 424, 630, 408, 658, 361, 651);

  //object 47-50
  fill(17, 50, 147);
  stroke(17, 50, 147);
  quad(302, 581, 361, 580, 361, 617, 299, 605);
  quad(361, 537, 389, 536, 389, 556, 361, 555);
  quad(314, 494, 337, 494, 336, 517, 311, 518);
  quad(231, 548, 267, 554, 258, 596, 230, 590);

  //object 51-53
  fill(44, 68, 8);
  stroke(44, 68, 8);
  quad(267, 554, 306, 555, 302, 581, 266, 577);
  quad(308, 538, 335, 537, 334, 555, 306, 555);
  quad(361, 555, 389, 556, 388, 626, 361, 623);

  //object 54-55
  fill(251, 243, 0);
  stroke(251, 243, 0);
  quad(335, 537, 361, 537, 361, 555, 334, 555);
  fill(247, 137, 0);
  stroke(247, 137, 0);
  quad(242, 494, 314, 494, 306, 555, 231, 548);

  //object 56-60
  fill(0);
  stroke(0);
  quad(337, 494, 361, 494, 361, 517, 336, 517);
  quad(306, 555, 361, 555, 361, 580, 302, 581);
  quad(266, 577, 302, 581, 299, 605, 258, 596);
  quad(299, 605, 361, 617, 361, 651, 294, 648);
  quad(389, 556, 424, 556, 424, 630, 388, 626);

  //object 61-64
  triangle(361, 651, 408, 658, 361, 694);
  triangle(240, 650, 294, 648, 288, 693);
  triangle(230, 590, 258, 596, 234, 627);
  triangle(235, 521, 267, 554, 231, 548);
  quad(311, 518, 336, 517, 335, 537, 308, 538);

  //add object A-F
  //A
  curveTightness(-0.5); 
  stroke(0);
  fill(0);
  beginShape();
  curveVertex(235, 521);
  curveVertex(235, 521);
  curveVertex(235, 521);
  curveVertex(250, 525);
  curveVertex(261, 535);
  curveVertex(267, 554);
  curveVertex(267, 554);
  endShape();
  //B
  fill(17, 50, 147);
  stroke(17, 50, 147);
  triangle(267, 554, 266, 577, 258, 596);
  //C
  strokeWeight(0);
  stroke(0);
  fill(0);
  beginShape();
  curveVertex(240, 650);
  curveVertex(240, 650);
  curveVertex(248, 666);
  curveVertex(260, 677);
  curveVertex(288, 693);
  curveVertex(288, 693);
  endShape();
  //D
  fill(216, 51, 3);
  stroke(216, 51, 3);
  strokeWeight(0);
  beginShape();
  curveVertex(288, 693);
  curveVertex(288, 693);
  curveVertex(324, 700);
  curveVertex(361, 694);
  curveVertex(361, 694);
  endShape();
  //E
  strokeWeight(0);
  stroke(0);
  fill(0);
  beginShape();
  curveVertex(361, 694);
  curveVertex(361, 694);
  curveVertex(387, 679);
  curveVertex(408, 658);
  curveVertex(408, 658);
  endShape();
  //F
  strokeWeight(0);
  stroke(0);
  fill(0);
  beginShape();
  curveVertex(424, 630);
  curveVertex(424, 630);
  curveVertex(428, 612);
  curveVertex(429, 592);
  curveVertex(424, 556);
  curveVertex(424, 556);
  endShape();



  noFill();
  stroke(0);
  strokeWeight(2.5);
  //object 1-5
  line(361, 444, 361, 771);
  line(283, 753, 317, 472);
  line(337, 490, 334, 555);
  line(390, 523, 388, 626);
  line(482, 460, 614, 627);

  //object 6-10
  line(539, 470, 542, 608);
  line(599, 472, 460, 606);
  line(602, 528, 459, 540);
  line(564, 171, 635, 213);
  line(593, 270, 635, 231);

  //object 11-15
  line(228, 494, 394, 494);
  line(311, 518, 361, 517);
  line(308, 538, 428, 536);
  line(231, 548, 267, 554);
  line(267, 554, 424, 556);

  //object 16-20
  line(266, 577, 302, 581);
  line(302, 581, 361, 580);
  line(230, 590, 361, 617);
  line(361, 623, 424, 630);
  line(294, 648, 294, 648);

  //object 21-24
  line(294, 648, 361, 651);
  line(361, 651, 408, 658);
  line(490, 677, 488, 712);
  line(488, 712, 477, 766);

  //object curve 26
  fill(0);
  curveTightness(-0.5); 
  stroke(0);
  beginShape();
  curveVertex(171, 558);
  curveVertex(171, 558);
  curveVertex(123, 561);
  curveVertex(107, 607);
  curveVertex(155, 604);
  curveVertex(171, 558);
  curveVertex(179, 558);
  endShape();

  //add object J-K
  fill(0);
  stroke(0);
  strokeWeight(0);
  quad(564, 171, 580, 158, 598, 178, 613, 200);
  quad(613, 200, 645, 213, 635, 231, 627, 237);


  fill(220, 47, 7);
  stroke(220, 47, 7);
  strokeWeight(2);
  beginShape();
  curveVertex(538, 138);
  curveVertex(538, 138);
  curveVertex(560, 146);
  curveVertex(580, 158);
  curveVertex(580, 158);
  endShape();

  //object 28
  fill(44, 60, 156);
  stroke(44, 60, 156);
  strokeWeight(2);
  beginShape();
  curveVertex(607, 372);
  curveVertex(607, 372);
  curveVertex(571, 376);
  curveVertex(553, 404);
  curveVertex(551, 437);
  curveVertex(575, 466);
  curveVertex(611, 457);
  curveVertex(629, 429);
  curveVertex(631, 396);
  curveVertex(607, 372);
  curveVertex(607, 372);
  endShape(close);

  //object H
  fill(0);
  stroke(0);
  strokeWeight(2);
  beginShape();
  curveVertex(619, 374);
  curveVertex(619, 374);
  curveVertex(631, 396);
  curveVertex(629, 429);
  curveVertex(611, 457);
  curveVertex(575, 466);
  curveVertex(553, 443);
  curveVertex(553, 443);
  endShape();
  fill(44, 60, 156);
  stroke(44, 60, 156);
  strokeWeight(2);
  beginShape();
  curveVertex(619, 374);
  curveVertex(619, 374);
  curveVertex(602, 404);
  curveVertex(575, 433);
  curveVertex(553, 443);
  curveVertex(553, 443);
  endShape();

  //object 29-30
  fill(221, 53, 4);
  stroke(221, 53, 4);
  ellipse(588, 421, 42, 42);
  fill(0);
  stroke(0);
  ellipse(503, 657, 65, 42);

  //object G
  fill(0);
  stroke(0);
  strokeWeight(2);
  beginShape();
  curveVertex(572, 436);
  curveVertex(572, 436);
  curveVertex(567, 421);
  curveVertex(570, 409);
  curveVertex(582, 399);
  curveVertex(597, 400);
  curveVertex(602, 404);
  curveVertex(602, 404);
  endShape();


  //object curve 36
  noFill();
  stroke(0);
  strokeWeight(2);
  beginShape();
  curveVertex(171, 558);
  curveVertex(171, 558);
  curveVertex(199, 531);
  curveVertex(236, 521);
  curveVertex(236, 521);
  endShape();
  beginShape();
  curveVertex(236, 521);
  curveVertex(236, 521);
  curveVertex(250, 525);
  curveVertex(261, 535);
  curveVertex(261, 535);
  endShape();
  beginShape();
  curveVertex(261, 535);
  curveVertex(261, 535);
  curveVertex(267, 569);
  curveVertex(256, 600);
  curveVertex(256, 600);
  endShape();
  beginShape();
  curveVertex(256, 600);
  curveVertex(256, 600);
  curveVertex(208, 649);
  curveVertex(147, 679);
  curveVertex(147, 679);
  endShape();
  beginShape();
  curveVertex(147, 679);
  curveVertex(147, 679);
  curveVertex(112, 682);
  curveVertex(79, 668);
  curveVertex(56, 640);
  curveVertex(48, 606);
  curveVertex(48, 606);
  endShape();
  beginShape();
  curveVertex(48, 606);
  curveVertex(48, 606);
  curveVertex(60, 515);
  curveVertex(95, 431);
  curveVertex(95, 431);
  endShape();
  beginShape();
  curveVertex(95, 431);
  curveVertex(95, 431);
  curveVertex(189, 273);
  curveVertex(319, 145);
  curveVertex(319, 145);
  endShape();
  beginShape();
  curveVertex(319, 145);
  curveVertex(319, 145);
  curveVertex(375, 81);
  curveVertex(400, 0);
  curveVertex(400, 0);
  endShape();

  //object curve 37-1
  fill(0);
  stroke(0);
  beginShape();
  curveVertex(321, 235);
  curveVertex(321, 235);
  curveVertex(338, 221);
  curveVertex(360, 218);
  curveVertex(379, 228);
  curveVertex(390, 248);
  curveVertex(391, 273);
  curveVertex(391, 298);
  curveVertex(381, 316);
  curveVertex(362, 322);
  curveVertex(353, 317);
  curveVertex(351, 307);
  curveVertex(356, 290);
  curveVertex(363, 274);
  curveVertex(364, 269);
  curveVertex(363, 264);
  curveVertex(361, 260);
  curveVertex(357, 257);
  curveVertex(352, 257);
  curveVertex(347, 258);
  curveVertex(343, 261);
  curveVertex(341, 266);
  curveVertex(333, 286);
  curveVertex(333, 286);
  curveVertex(333, 286);
  curveVertex(333, 286);
  curveVertex(324, 295);
  curveVertex(310, 295);
  curveVertex(302, 284);
  curveVertex(304, 271);
  curveVertex(312, 253);
  curveVertex(321, 235);
  curveVertex(321, 235);
  endShape();

  //object N
  fill(197, 62, 6);
  stroke(197, 62, 6);
  strokeWeight(4);
  curveTightness(-1); 
  beginShape();
  curveVertex(391, 287);
  curveVertex(391, 287);
  curveVertex(381, 316);
  curveVertex(362, 322);
  curveVertex(353, 317);
  curveVertex(353, 317);
  endShape();

  //object curve 37-6
  curveTightness(-0.5); 
  strokeWeight(2);
  stroke(0);
  fill(236, 235, 230);
  beginShape();
  curveVertex(363, 274);
  curveVertex(363, 274);
  curveVertex(364, 269);
  curveVertex(363, 264);
  curveVertex(361, 260);
  curveVertex(357, 257);
  curveVertex(352, 257);
  curveVertex(347, 258);
  curveVertex(343, 261);
  curveVertex(341, 266);
  curveVertex(333, 286);
  curveVertex(333, 286);
  endShape();
  fill(0);
  beginShape();
  curveVertex(333, 286);
  curveVertex(333, 286);
  curveVertex(324, 295);
  curveVertex(310, 295);
  curveVertex(302, 284);
  curveVertex(304, 271);
  curveVertex(312, 253);
  curveVertex(321, 235);
  curveVertex(321, 235);
  endShape();

  //object curve 38
  noFill();
  beginShape();
  curveVertex(578, 238);
  curveVertex(578, 238);
  curveVertex(496, 255);
  curveVertex(414, 276);
  curveVertex(414, 276);
  endShape();
  beginShape();
  curveVertex(414, 276);
  curveVertex(414, 276);
  curveVertex(389, 289);
  curveVertex(367, 305);
  curveVertex(346, 324);
  curveVertex(329, 346);
  curveVertex(329, 346);
  endShape();
  beginShape();
  curveVertex(329, 346);
  curveVertex(329, 346);
  curveVertex(304, 383);
  curveVertex(278, 420);
  curveVertex(278, 420);
  endShape();
  beginShape();
  curveVertex(278, 420);
  curveVertex(278, 420);
  curveVertex(253, 465);
  curveVertex(236, 514);
  curveVertex(229, 556);
  curveVertex(233, 618);
  curveVertex(233, 618);
  endShape();
  beginShape();
  curveVertex(233, 618);
  curveVertex(233, 618);
  curveVertex(238, 643);
  curveVertex(248, 666);
  curveVertex(248, 666);
  endShape();
  beginShape();
  curveVertex(248, 666);
  curveVertex(248, 666);
  curveVertex(302, 697);
  curveVertex(365, 692);
  curveVertex(413, 652);
  curveVertex(429, 592);
  curveVertex(429, 592);
  endShape();
  beginShape();
  curveVertex(429, 592);
  curveVertex(429, 592);
  curveVertex(419, 519);
  curveVertex(408, 446);
  curveVertex(408, 446);
  endShape();
  beginShape();
  curveVertex(408, 446);
  curveVertex(408, 446);
  curveVertex(407, 418);
  curveVertex(406, 391);
  curveVertex(406, 391);
  endShape();
  beginShape();
  curveVertex(406, 391);
  curveVertex(406, 391);
  curveVertex(411, 368);
  curveVertex(419, 346);
  curveVertex(431, 327);
  curveVertex(447, 310);
  curveVertex(447, 310);
  endShape();
  beginShape();
  curveVertex(447, 310);
  curveVertex(447, 310);
  curveVertex(478, 291);
  curveVertex(510, 276);
  curveVertex(544, 263);
  curveVertex(579, 254);
  curveVertex(579, 254);
  endShape();

  //object curve 39
  fill(0);
  beginShape();
  curveVertex(466, 421);
  curveVertex(466, 421);
  curveVertex(481, 402);
  curveVertex(496, 384);
  curveVertex(504, 357);
  curveVertex(500, 329);
  curveVertex(485, 306);
  curveVertex(461, 291);
  curveVertex(437, 295);
  curveVertex(421, 312);
  curveVertex(419, 326);
  curveVertex(427, 338);
  curveVertex(437, 345);
  curveVertex(448, 351);
  curveVertex(448, 351);
  endShape();
  fill(236, 235, 230);
  beginShape();
  curveVertex(448, 351);
  curveVertex(448, 351);
  curveVertex(463, 364);
  curveVertex(472, 382);
  curveVertex(473, 402);
  curveVertex(466, 421);
  curveVertex(466, 421);
  endShape();

  //object M
  fill(17, 50, 147);
  stroke(17, 50, 147);
  strokeWeight(2);
  curveTightness(-0.5); 
  beginShape();
  curveVertex(425, 336);
  curveVertex(425, 336);
  curveVertex(419, 326);
  curveVertex(421, 312);
  curveVertex(437, 295);
  curveVertex(461, 291);
  curveVertex(470, 295);
  curveVertex(470, 295);
  endShape();
  fill(0);
  stroke(0);
  strokeWeight(2);
  curveTightness(-0.5); 
  beginShape();
  curveVertex(425, 336);
  curveVertex(425, 336);
  curveVertex(431, 327);
  curveVertex(447, 310);
  curveVertex(470, 295);
  curveVertex(470, 295);
  endShape();


  //object line 38
  stroke(236, 235, 230);
  strokeWeight(2);
  noFill();
  line(448, 351, 466, 421);

  //object curve 41
  stroke(0);
  beginShape();
  curveVertex(477, 766);
  curveVertex(477, 766);
  curveVertex(392, 776);
  curveVertex(311, 751);
  curveVertex(311, 751);
  endShape();
}



