
void setup (){
size(500, 500);
background(95,236,252);
}
  
void draw(){ 
fill(255,0,0); 
rect(125, 250, 250, 125); 
fill(108,54,0);
triangle(125, 250, 187, 125, 250, 250);
fill(108,54,0);
quad(250, 250, 187, 125, 375, 125, 375, 250);
fill(255,255,255);
 line(250, 250, 250, 375);
 fill(255,255,0);
rect(170,295,40,80);
fill(192,248,254);
rect(290,293,40,40);
fill(0,0,0);
ellipse(203,330,5,5);
line(310,293,310,333);
line(290,313,330,313);
}
