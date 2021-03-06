
//ITGM 315
// Olsen D.C. (ocabra20@student.scad.edu)
// Assignment 1

float eyesR;
float eyesG;
float eyesB;

void setup(){
  size (500,500);
rectMode (CORNERS);
ellipseMode (CORNERS);
frameRate (40);
}
void draw (){
  background (mouseX,40,mouseY);


//ears
fill (209,167,27);
ellipse (mouseX-40,mouseY-20,mouseX-20,mouseY);
ellipse (mouseX+20,mouseY-20,mouseX+40,mouseY);

//face
rect (mouseX-30,mouseY-40,mouseX+30,mouseY+20);

//mouth
fill(209,167,27);
ellipse (mouseX-10,mouseY-10,mouseX+10,mouseY+10);

//mouth corrector
fill (209,167,27);
stroke (209,167,27);
rect(mouseX-10,mouseY-15,mouseX+10,mouseY);

//hair
fill (0);
stroke (0);
triangle (mouseX-30,mouseY-40,mouseX+30,mouseY-80,mouseX+30,mouseY-40);

//eyes
eyesR = random(255);
eyesG = random(255);
eyesB = random(255);
fill(eyesR,eyesG,eyesB);
ellipse(mouseX-25,mouseY-20,mouseX-15,mouseY);
ellipse(mouseX+15,mouseY-20,mouseX+25,mouseY);

//neck
fill(209,167,27);
rect (mouseX-10,mouseY+20,mouseX+10,mouseY+30);

//body
fill(mouseX+70,mouseY+185,mouseY+230);
rect(mouseX-20,mouseY+30,mouseX+20,mouseY+100);

//tie
fill(108,25,84);
triangle(mouseX-10,mouseY+30,mouseX,mouseY+40,mouseX+10,mouseY+30);
triangle(mouseX-10,mouseY+90,mouseX,mouseY+40,mouseX+10,mouseY+90);

//hands
line(mouseX-20,mouseY+30,pmouseX-50,pmouseY+60);
line(mouseX+20,mouseY+30,pmouseX+50,pmouseY+60);

//legs
fill(0,37,100);
rect(mouseX-10,mouseY+100,mouseX,mouseY+140);
rect(mouseX,mouseY+100,mouseX+10,mouseY+140);

//shoes
fill(0);
rect(mouseX-20,mouseY+140,mouseX,mouseY+150);
rect(mouseX,mouseY+140,mouseX+20,mouseY+150);
}

void mousePressed() {
  println("hey, I am learning proccessing!!");
}
