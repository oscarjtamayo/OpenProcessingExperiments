
void setup(){
  size(400, 400);
  background(116, 193, 206);
}
void draw(){
  frameRate(30);
if (mouseY<=200){
cat();
}
else{
  catghost();
}
}
void cat(){

fill(0);
triangle(200, 200, 50, 400, 350, 400);
fill(237, 159, 176);
triangle(110, 145, 180, 145, 134, 85);
fill(237, 159, 176);
triangle(220, 145, 290, 145, 266, 85);
fill(0);
triangle(95, 155, 195, 155, 134, 65);
fill(0);
triangle(205, 155, 305, 155, 266, 65);
fill(237, 159, 176);
triangle(110, 145, 180, 145, 134, 85);
fill(237, 159, 176);
triangle(220, 145, 290, 145, 266, 85);
smooth();
fill(255);
ellipse(200, 400, 175, 300);
smooth();
fill(0);
ellipse(200, 200, 250, 200);
 fill(237, 159, 176);
 smooth();
fill(237, 159, 176);
strokeWeight(5);
stroke(237, 159, 176);
ellipse(200, 200, 30, 20);
smooth();
noStroke();
fill(156, 211, 177);
ellipse(145, 175, 40, 40);
smooth();
noStroke();
fill(156, 211, 177);
ellipse(255, 175, 40, 40);
smooth();
fill(0);
ellipse(145, 175, 10, 40);
smooth();
fill(0);
ellipse(255, 175, 10, 40);
smooth();
noStroke();
fill(255);
ellipse(260, 172, 8, 8);
smooth();
noStroke();
fill(255);
ellipse(150, 172, 8, 8);
smooth();
strokeWeight(3);
stroke(245);
line(245, 210, 375, 188);
smooth();
strokeWeight(3);
stroke(245);
line(245, 220, 375, 212);
smooth();
strokeWeight(3);
stroke(245);
line(155, 220, 25, 212);
smooth();
strokeWeight(3);
stroke(245);
line(155, 210, 25, 188);
noStroke();
fill(237, 159, 176);
triangle(190, 230, 210, 230, 200, 250);
smooth();
strokeWeight(25);
stroke(0);
line(350, 400, 375, 175);
smooth();
strokeWeight(25);
stroke(255);
line(330, 75, 340, 35);
smooth();
strokeWeight(25);
stroke(0);
line(375, 175, 330, 75);
smooth();
fill(0);
ellipse(100, 400, 100, 75);
smooth();
fill(0);
ellipse(300, 400, 100, 75);

}
void catghost(){
  fill(255);
  stroke(245);
triangle(200, 200, 50, 400, 350, 400);
fill(255);
stroke(245);
triangle(95, 155, 195, 155, 134, 65);
fill(255);
stroke(245);
triangle(205, 155, 305, 155, 266, 65);
stroke(245);
fill(255);
triangle(110, 145, 180, 145, 134, 85);
fill(255);
stroke(245);
triangle(220, 145, 290, 145, 266, 85);
smooth();
fill(255);
stroke(245);
ellipse(200, 400, 175, 300);
smooth();
fill(255);
stroke(245);
ellipse(200, 200, 250, 200);
smooth();
fill(255);
stroke(245);
ellipse(200, 200, 30, 20);
smooth();
fill(255);
stroke(245);
ellipse(145, 175, 40, 40);
smooth();
stroke(245);
fill(255);
ellipse(255, 175, 40, 40);
smooth();
fill(255);
stroke(245);
ellipse(145, 175, 10, 40);
smooth();
fill(255);
stroke(245);
ellipse(255, 175, 10, 40);
smooth();
fill(255);
stroke(245);
ellipse(260, 172, 8, 8);
smooth();
fill(255);
stroke(245);
ellipse(150, 172, 8, 8);
smooth();
strokeWeight(3);
stroke(245);
line(245, 210, 375, 188);
smooth();
strokeWeight(3);
stroke(245);
line(245, 220, 375, 212);
smooth();
strokeWeight(3);
stroke(245);
line(155, 220, 25, 212);
smooth();
strokeWeight(3);
stroke(255);
line(155, 210, 25, 188);
stroke(245);
fill(255);
triangle(190, 230, 210, 230, 200, 250);
smooth();
strokeWeight(25);
stroke(245);
line(350, 400, 375, 175);
smooth();
strokeWeight(25);
stroke(245);
line(330, 75, 340, 35);
smooth();
strokeWeight(25);
stroke(245);
line(375, 175, 330, 75);
smooth();
fill(255);
stroke(245);
ellipse(100, 400, 100, 75);
smooth();
fill(255);
stroke(245);
ellipse(300, 400, 100, 75);

}


