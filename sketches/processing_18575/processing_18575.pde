
void setup(){
  size(250,250);
  background(169,228,242);
  strokeWeight(3);
  smooth();
  colorMode(RGB,255);
  fill(126,73,17);
  beginShape();
  vertex(151,215);
  vertex(150,154);
  vertex(160,137);
  vertex(183,128);
  vertex(204,129);
  vertex(224,119);
  vertex(206,120);
  vertex(170,123);
  vertex(201,90);
  vertex(207,76);
  vertex(214,70);
  vertex(238,61);
  vertex(221,61);
  vertex(241,38);
  vertex(220,53);
  vertex(215,64);
  vertex(203,70);
   vertex(205,55);
    vertex(206,45);
     vertex(210,35);
      vertex(201,44);
       vertex(199,56);
        vertex(194,47);
         vertex(186,45);
          vertex(194,56);
           vertex(192,82);
            vertex(184,89);
             vertex(180,81);
              vertex(176,99);
               vertex(160,111);
                vertex(164,86);
                 vertex(173,75);
                  vertex(176,64);
                   vertex(163,78);
                    vertex(166,66);
                    vertex(171,55);
                    vertex(171,38);
                    vertex(165,56);
                    vertex(157,45);
                    vertex(157,55);
                    vertex(160,64);
                    vertex(157,80);
                    vertex(146,111);
                    vertex(141,101);
                    vertex(146,85);
                    vertex(142,75);
                    vertex(133,102);
                    vertex(132,121);
                    vertex(121,116);
                    vertex(122,97);
                    vertex(128,85);
                    vertex(117,94);
                    vertex(109,78);
                    vertex(109,91);
                    vertex(111,111);
                    vertex(102,79);
                    vertex(115,55);
                    vertex(130,43);
                    vertex(120,46);
                    vertex(111,53);
                    vertex(116,41);
                    vertex(118,23);
                    vertex(111,40);
                    vertex(99,60);
                    vertex(93,49);
                    vertex(97,70);
                    vertex(89,95);
                    vertex(64,70);
                    vertex(51,45);
                    vertex(51,58);
                    vertex(33,40);
                    vertex(38,58);
                    vertex(55,72);
                    vertex(72,96);
                    vertex(102,121);
                    vertex(75,108);
                    vertex(65,108);
                    vertex(62,88);
                    vertex(60,99);
                    vertex(43,91);
                    vertex(28,70);
                    vertex(34,94);
                    vertex(18,89);
                    vertex(30,102);
                    vertex(38,104);
                    vertex(63,112);
                    vertex(45,114);
                    vertex(51,120);
                    vertex(50,129);
                    vertex(61,121);
                    vertex(71,119);
                    vertex(86,127);
                    vertex(76,129);
                    vertex(87,133);
                    vertex(101,139);
                    vertex(102,154);
                    vertex(98,214);
                    vertex(151,215);
                    endShape();
}
                    
          
                                       
void draw() {
  float x = (mouseX);          
   background(169,228,242);
   fill(255,141,18);
ellipseMode(RADIUS);
ellipse(mouseX,40,20,20);
   stroke(3);
  strokeWeight(3);
    fill(126,73,17);
  beginShape();
  vertex(151,215);
  vertex(150,154);
  vertex(160,137);
  vertex(183,128);
  vertex(204,129);
  vertex(224,119);
  vertex(206,120);
  vertex(170,123);
  vertex(201,90);
  vertex(207,76);
  vertex(214,70);
  vertex(238,61);
  vertex(221,61);
  vertex(241,38);
  vertex(220,53);
  vertex(215,64);
  vertex(203,70);
   vertex(205,55);
    vertex(206,45);
     vertex(210,35);
      vertex(201,44);
       vertex(199,56);
        vertex(194,47);
         vertex(186,45);
          vertex(194,56);
           vertex(192,82);
            vertex(184,89);
             vertex(180,81);
              vertex(176,99);
               vertex(160,111);
                vertex(164,86);
                 vertex(173,75);
                  vertex(176,64);
                   vertex(163,78);
                    vertex(166,66);
                    vertex(171,55);
                    vertex(171,38);
                    vertex(165,56);
                    vertex(157,45);
                    vertex(157,55);
                    vertex(160,64);
                    vertex(157,80);
                    vertex(146,111);
                    vertex(141,101);
                    vertex(146,85);
                    vertex(142,75);
                    vertex(133,102);
                    vertex(132,121);
                    vertex(121,116);
                    vertex(122,97);
                    vertex(128,85);
                    vertex(117,94);
                    vertex(109,78);
                    vertex(109,91);
                    vertex(111,111);
                    vertex(102,79);
                    vertex(115,55);
                    vertex(130,43);
                    vertex(120,46);
                    vertex(111,53);
                    vertex(116,41);
                    vertex(118,23);
                    vertex(111,40);
                    vertex(99,60);
                    vertex(93,49);
                    vertex(97,70);
                    vertex(89,95);
                    vertex(64,70);
                    vertex(51,45);
                    vertex(51,58);
                    vertex(33,40);
                    vertex(38,58);
                    vertex(55,72);
                    vertex(72,96);
                    vertex(102,121);
                    vertex(75,108);
                    vertex(65,108);
                    vertex(62,88);
                    vertex(60,99);
                    vertex(43,91);
                    vertex(28,70);
                    vertex(34,94);
                    vertex(18,89);
                    vertex(30,102);
                    vertex(38,104);
                    vertex(63,112);
                    vertex(45,114);
                    vertex(51,120);
                    vertex(50,129);
                    vertex(61,121);
                    vertex(71,119);
                    vertex(86,127);
                    vertex(76,129);
                    vertex(87,133);
                    vertex(101,139);
                    vertex(102,154);
                    vertex(98,214);
                    vertex(151,215);
                    endShape();

fill(255);
noStroke();
ellipseMode(CORNER);
ellipse(181,126,5,50-x/5);
ellipse(175,128,5,20-x/11.8);
ellipse(170,130,5,70-x/3.5);
ellipse(178,115,40-x/6,5);
ellipse(215,124,5,30-x/8);
ellipse(210,126,5,60-x/4.1);
ellipse(215,72,5,30-x/8);
ellipse(220,70,5,40-x/6.5);
ellipse(122,112,10,15-x/15.5);
ellipse(119,53,5,30-x/8);
ellipse(124,50,5,15-x/15.5);
ellipse(169,80,5,35-x/7.7);
ellipse(89,133,5,30-x/8);
ellipse(94,133,5,60-x/4.1);
ellipse(58,123,5,20-x/11.8);
ellipse(26,102,5,20-x/11.8);
ellipse(29,104,5,40-x/6.5);
ellipse(33,106,5,70-x/3.5);
ellipse(53,71,5,30-x/8);
float k =(width-mouseX);
ellipseMode(RADIUS);
fill(28,173,36,220);
ellipse(185,125,20-k/13,20-k/13);
ellipse(170,95,15-k/17.5,15-k/17.5);
ellipse(219,121,30-k/8,30-k/8);
ellipse(191,49,30-k/8,30-k/8);
ellipse(238,62,15-k/17.5,15-k/17.5);
ellipse(242,35,10-k/23,10-k/23);
ellipse(157,47,10-k/23,10-k/23);
ellipse(142,82,20-k/13,20-k/13);
ellipse(122,118,15-k/17.5,15-k/17.5);
ellipse(111,84,20-k/13,20-k/13);
ellipse(126,45,15-k/17.5,15-k/17.5);
ellipse(118,24,25-k/10,25-k/10);
ellipse(94,47,25-k/10,25-k/10);
ellipse(33,40,30-k/8,30-k/8);
ellipse(35,77,15-k/17.5,15-k/17.5);
ellipse(63,93,20-k/13,20-k/13);
ellipse(77,130,30-k/8,30-k/8);
ellipse(26,100,20-k/13,20-k/13);



}
                    
                    
                    
                   
                  
                    
                    
                    
             
                    
                    

