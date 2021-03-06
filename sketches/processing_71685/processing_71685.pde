
int count = 0;

void setup() {
  size(1100,800);
  background(222,240,255);
  smooth();
}
 
void draw() {
  translate(width/2,height/2);
  rotate(count);
  for (int i = 0; i <= height; i+=120) {//moves y value
    for (int j = 0; j <= width; j+=120) {//moves x value
      bullshit(5*map(mouseX,0,width,1,3),5*map(mouseX,0,width,1,3),20,random(0,255),random(0,255),random(0,255),i,j);
      face(j*map(mouseX,0,width,1,10), i);//calls face function
    }
 
  }
  count++;
}
 
void face(float xVal, float yVal) {//creates Pell's face
  float x = xVal;
  float y = yVal;
 
  //headblob
  noStroke();
  fill(249, 237, 219);
  beginShape();
  curveVertex(x+33, y+10);
  curveVertex(x+33, y+10);
  curveVertex(x+30, y+16);
  curveVertex(x+34, y+44);
  curveVertex(x+33, y+49);
  curveVertex(x+38, y+68);
  //curveVertex(x+65,y+96);
  curveVertex(x+91, y+74);
  curveVertex(x+94, y+66);
  curveVertex(x+95, y+48);
  curveVertex(x+94, y+29);
  curveVertex(x+91, y+12);
  curveVertex(x+75, y+1);
  curveVertex(x+40, y+3);
  curveVertex(x+33, y+10);
  curveVertex(x+33, y+10);
  endShape();
 
  //eyenosemoutharea
  fill(249, 177, 120);
  beginShape();
  curveVertex(x+67, y+33);
  curveVertex(x+67, y+33);
  curveVertex(x+90, y+34);
  curveVertex(x+90, y+38);
  curveVertex(x+91, y+41);
  curveVertex(x+86, y+39);
  curveVertex(x+83, y+39);
  curveVertex(x+75, y+40);
  curveVertex(x+74, y+42);
  curveVertex(x+76, y+44);
  curveVertex(x+90, y+49);
  curveVertex(x+91, y+53);
  curveVertex(x+93, y+67);
  curveVertex(x+73, y+94);
  //curveVertex(x+67,y+96);
  curveVertex(x+58, y+93);
  curveVertex(x+39, y+70);
  curveVertex(x+40, y+57);
  curveVertex(x+52, y+47);
  curveVertex(x+54, y+47);
  curveVertex(x+55, y+49);
  curveVertex(x+56, y+49);
  curveVertex(x+58, y+46);
  curveVertex(x+67, y+46);
  curveVertex(x+68, y+45);
  curveVertex(x+71, y+44);
  curveVertex(x+67, y+37);
  curveVertex(x+67, y+33);
  curveVertex(x+67, y+33);
  endShape();
 
  //forehead
  beginShape();
  curveVertex(x+34, y+53);
  curveVertex(x+34, y+53);
  curveVertex(x+32, y+51);
  curveVertex(x+30, y+28);
  curveVertex(x+29, y+22);
  curveVertex(x+26, y+24);
  curveVertex(x+40, y+1);
  curveVertex(x+80, y+0);
  curveVertex(x+92, y+15);
  curveVertex(x+97, y+35);
  curveVertex(x+99, y+37);
  curveVertex(x+99, y+58);
  curveVertex(x+97, y+58);
  curveVertex(x+96, y+47);
  curveVertex(x+95, y+39);
  curveVertex(x+94, y+34);
  curveVertex(x+92, y+29);
  curveVertex(x+90, y+23);
  curveVertex(x+86, y+18);
  curveVertex(x+82, y+14);
  curveVertex(x+71, y+12);
  curveVertex(x+63, y+11);
  curveVertex(x+63, y+10);
  curveVertex(x+70, y+10);
  curveVertex(x+70, y+8);
  curveVertex(x+60, y+8);
  curveVertex(x+60, y+6);
  curveVertex(x+56, y+2);
  curveVertex(x+41, y+13);
  curveVertex(x+40, y+12);
  curveVertex(x+34, y+15);
  curveVertex(x+34, y+53);
  curveVertex(x+34, y+53);
  endShape();
 
  //hair
  fill(102, 77, 51);
  beginShape();
  curveVertex(x+32, y+41);
  curveVertex(x+32, y+41);
  curveVertex(x+31, y+41);
  curveVertex(x+31, y+38);
  curveVertex(x+29, y+28);
  curveVertex(x+24, y+19);
  curveVertex(x+24, y+14);
  curveVertex(x+27, y+14);
  curveVertex(x+27, y+9);
  curveVertex(x+34, y+6);
  curveVertex(x+33, y+0);
  curveVertex(x+87, y+0);
  curveVertex(x+93, y+5);
  curveVertex(x+95, y+10);
  curveVertex(x+95, y+22);
  curveVertex(x+98, y+26);
  curveVertex(x+97, y+34);
  curveVertex(x+95, y+34);
  curveVertex(x+94, y+30);
  curveVertex(x+91, y+26);
  curveVertex(x+90, y+14);
  curveVertex(x+81, y+10);
  curveVertex(x+74, y+3);
  curveVertex(x+60, y+2);
  curveVertex(x+49, y+2);
  curveVertex(x+40, y+8);
  curveVertex(x+39, y+9);
  curveVertex(x+38, y+9);
  curveVertex(x+37, y+8);
  curveVertex(x+35, y+8);
  curveVertex(x+34, y+12);
  curveVertex(x+33, y+16);
  curveVertex(x+29, y+22);
  curveVertex(x+31, y+28);
  curveVertex(x+32, y+35);
  curveVertex(x+32, y+41);
  curveVertex(x+32, y+41);
  endShape();
 
  //eyeshadow
  fill(251, 177, 134);
  beginShape();
  curveVertex(x+38, y+31);
  curveVertex(x+38, y+31);
  curveVertex(x+38, y+31);
  curveVertex(x+41, y+40);
  curveVertex(x+44, y+42);
  curveVertex(x+52, y+40);
  curveVertex(x+57, y+35);
  curveVertex(x+59, y+28);
  curveVertex(x+62, y+26);
  curveVertex(x+64, y+27);
  curveVertex(x+67, y+33);
  curveVertex(x+72, y+37);
  curveVertex(x+83, y+37);
  curveVertex(x+90, y+33);
  curveVertex(x+92, y+29);
  curveVertex(x+91, y+27);
  curveVertex(x+89, y+27);
  curveVertex(x+88, y+23);
  curveVertex(x+82, y+18);
  curveVertex(x+77, y+17);
  curveVertex(x+62, y+22);
  curveVertex(x+56, y+23);
  curveVertex(x+49, y+21);
  curveVertex(x+42, y+26);
  curveVertex(x+38, y+31);
  curveVertex(x+38, y+31);
  endShape();
 
  //eyeinnershadow
  fill(156, 84, 50);
  beginShape();
  curveVertex(x+39, y+38);
  curveVertex(x+39, y+38);
  curveVertex(x+47, y+34);
  curveVertex(x+49, y+36);
  curveVertex(x+43, y+38);
  curveVertex(x+45, y+40);
  curveVertex(x+48, y+41);
  curveVertex(x+54, y+36);
  curveVertex(x+57, y+33);
  curveVertex(x+58, y+32);
  curveVertex(x+49, y+28);
  curveVertex(x+41, y+32);
  curveVertex(x+39, y+38);
  curveVertex(x+39, y+38);
  endShape();
  beginShape();
  curveVertex(x+67, y+29);
  curveVertex(x+67, y+29);
  curveVertex(x+67, y+31);
  curveVertex(x+72, y+36);
  curveVertex(x+82, y+36);
  curveVertex(x+80, y+34);
  curveVertex(x+76, y+34);
  curveVertex(x+82, y+30);
  curveVertex(x+86, y+33);
  curveVertex(x+89, y+31);
  curveVertex(x+83, y+25);
  curveVertex(x+72, y+25);
  curveVertex(x+67, y+29);
  curveVertex(x+67, y+29);
  endShape();
 
  //eyes
  fill(83, 38, 23);
  beginShape();
  curveVertex(x+43, y+32);
  curveVertex(x+43, y+32);
  curveVertex(x+46, y+32);
  curveVertex(x+48, y+35);
  curveVertex(x+50, y+35);
  curveVertex(x+52, y+34);
  curveVertex(x+54, y+33);
  curveVertex(x+56, y+34);
  curveVertex(x+56, y+33);
  curveVertex(x+53, y+30);
  curveVertex(x+49, y+29);
  curveVertex(x+46, y+30);
  curveVertex(x+43, y+31);
  curveVertex(x+43, y+32);
  curveVertex(x+43, y+32);
  endShape();
  beginShape();
  curveVertex(x+69, y+30);
  curveVertex(x+69, y+30);
  curveVertex(x+71, y+31);
  curveVertex(x+75, y+28);
  curveVertex(x+77, y+32);
  curveVertex(x+79, y+31);
  curveVertex(x+80, y+30);
  curveVertex(x+81, y+28);
  curveVertex(x+81, y+26);
  curveVertex(x+82, y+27);
  curveVertex(x+78, y+25);
  curveVertex(x+72, y+27);
  curveVertex(x+68, y+29);
  curveVertex(x+69, y+30);
  curveVertex(x+69, y+30);
  endShape();
 
  //mouthnoseshade
  fill(206, 118, 72);
  beginShape();
  curveVertex(x+42, y+73);
  curveVertex(x+42, y+73);
  curveVertex(x+42, y+64);
  curveVertex(x+46, y+53);
  curveVertex(x+51, y+50);
  curveVertex(x+50, y+52);
  curveVertex(x+45, y+62);
  curveVertex(x+58, y+62);
  curveVertex(x+61, y+59);
  curveVertex(x+61, y+56);
  curveVertex(x+57, y+53);
  curveVertex(x+57, y+49);
  curveVertex(x+58, y+48);
  curveVertex(x+59, y+49);
  curveVertex(x+65, y+49);
  curveVertex(x+74, y+46);
  curveVertex(x+86, y+55);
  curveVertex(x+86, y+58);
  curveVertex(x+83, y+58);
  curveVertex(x+77, y+50);
  curveVertex(x+73, y+50);
  curveVertex(x+73, y+54);
  curveVertex(x+77, y+59);
  curveVertex(x+87, y+59);
  curveVertex(x+88, y+59);
  curveVertex(x+88, y+55);
  curveVertex(x+91, y+64);
  curveVertex(x+92, y+64);
  curveVertex(x+68, y+94);
  curveVertex(x+45, y+78);
  curveVertex(x+42, y+73);
  curveVertex(x+42, y+64);
  curveVertex(x+45, y+62);
  curveVertex(x+59, y+62);
  curveVertex(x+57, y+64);
  curveVertex(x+47, y+69);
  curveVertex(x+48, y+71);
  curveVertex(x+55, y+80);
  curveVertex(x+59, y+81);
  curveVertex(x+61, y+83);
  curveVertex(x+62, y+84);
  curveVertex(x+67, y+79);
  curveVertex(x+67, y+77);
  curveVertex(x+64, y+68);
  curveVertex(x+71, y+63);
  curveVertex(x+78, y+64);
  curveVertex(x+78, y+66);
  curveVertex(x+71, y+70);
  curveVertex(x+70, y+73);
  curveVertex(x+78, y+73);
  curveVertex(x+83, y+68);
  curveVertex(x+86, y+63);
  curveVertex(x+43, y+65);
  curveVertex(x+42, y+73);
  endShape();
 
  //lip
  fill(164, 66, 45);
  beginShape();
  curveVertex(x+62, y+64);
  curveVertex(x+62, y+64);
  curveVertex(x+62, y+63);
  curveVertex(x+68, y+60);
  curveVertex(x+73, y+61);
  curveVertex(x+74, y+62);
  curveVertex(x+84, y+62);
  curveVertex(x+85, y+63);
  curveVertex(x+82, y+65);
  curveVertex(x+79, y+66);
  curveVertex(x+79, y+65);
  curveVertex(x+71, y+66);
  curveVertex(x+70, y+66);
  curveVertex(x+68, y+65);
  curveVertex(x+68, y+64);
  curveVertex(x+62, y+64);
  curveVertex(x+62, y+64);
  endShape();
  fill(165, 83, 34);
  beginShape();
  curveVertex(x+44, y+66);
  curveVertex(x+44, y+66);
  curveVertex(x+44, y+65);
  curveVertex(x+46, y+63);
  curveVertex(x+57, y+63);
  curveVertex(x+51, y+67);
  curveVertex(x+46, y+67);
  curveVertex(x+44, y+66);
  curveVertex(x+44, y+66);
  endShape();
 
  //beard
  fill(102, 77, 51);
  beginShape();
  curveVertex(x+45, y+79);
  curveVertex(x+45, y+79);
  curveVertex(x+57, y+93);
  curveVertex(x+64, y+97);
  curveVertex(x+72, y+95);
  curveVertex(x+77, y+90);
  curveVertex(x+91, y+72);
  curveVertex(x+88, y+70);
  curveVertex(x+87, y+70);
  curveVertex(x+86, y+72);
  curveVertex(x+82, y+72);
  curveVertex(x+82, y+74);
  curveVertex(x+82, y+75);
  curveVertex(x+76, y+75);
  curveVertex(x+71, y+82);
  curveVertex(x+71, y+86);
  curveVertex(x+66, y+88);
  curveVertex(x+65, y+86);
  curveVertex(x+62, y+86);
  curveVertex(x+57, y+83);
  curveVertex(x+55, y+84);
  curveVertex(x+50, y+75);
  curveVertex(x+48, y+76);
  curveVertex(x+45, y+79);
  curveVertex(x+45, y+79);
  endShape();
}
void bullshit(float circle, float thickness, float spacing, 
  float color1, float color2, float color3, 
  float xPos, float yPos) {
    
    stroke(color1,color2,color3);
    strokeWeight(thickness);
    noFill();
    for(int i=0;i<=circle;i++){
     ellipse(xPos,yPos,i*spacing,i*spacing); 
    }
  }

