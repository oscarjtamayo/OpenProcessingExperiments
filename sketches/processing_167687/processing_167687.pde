
void setup(){
size(500,500);
background(0);
noCursor();
rectMode(CENTER);

}
void draw(){
fill(150,1);
rect(250,250,width,height);
stroke(0,500);
noFill();
line(0,50,mouseX,mouseY);
line(0,100,mouseX,mouseY);
line(0,150,mouseX,mouseY);
line(0,200,mouseX,mouseY);
line(0,250,mouseX,mouseY);
line(0,300,mouseX,mouseY);
line(0,350,mouseX,mouseY);
line(0,400,mouseX,mouseY);
line(0,450,mouseX,mouseY);
line(500,50,mouseX,mouseY);
line(500,100,mouseX,mouseY);
line(500,150,mouseX,mouseY);
line(500,200,mouseX,mouseY);
line(500,250,mouseX,mouseY);
line(500,300,mouseX,mouseY);
line(500,350,mouseX,mouseY);
line(500,400,mouseX,mouseY);
line(500,450,mouseX,mouseY);
line(500,0,mouseX,mouseY);
line(0,0,mouseX,mouseY);
line(0,500,mouseX,mouseY);
line(50,0,mouseX,mouseY);
line(100,0,mouseX,mouseY);
line(150,0,mouseX,mouseY);
line(200,0,mouseX,mouseY);
line(250,0,mouseX,mouseY);
line(300,0,mouseX,mouseY);
line(350,0,mouseX,mouseY);
line(400,0,mouseX,mouseY);
line(450,0,mouseX,mouseY);
line(50,500,mouseX,mouseY);
line(100,500,mouseX,mouseY);
line(150,500,mouseX,mouseY);
line(200,500,mouseX,mouseY);
line(250,500,mouseX,mouseY);
line(300,500,mouseX,mouseY);
line(350,500,mouseX,mouseY);
line(400,500,mouseX,mouseY);
line(450,500,mouseX,mouseY);
line(500,500,mouseX,mouseY);

if(mousePressed){
noStroke();
fill(255);
ellipse(mouseX,mouseY,60,60);
fill(255,50);
ellipse(mouseX,mouseY,80,80);
fill(255,40);
ellipse(mouseX,mouseY,100,100);  
fill(255,30);
ellipse(mouseX,mouseY,120,120);  
fill(255,25);
ellipse(mouseX,mouseY,140,140);  
fill(255,20);
ellipse(mouseX,mouseY,160,160);  
fill(255,15);
ellipse(mouseX,mouseY,180,180);  
fill(255,10);
ellipse(mouseX,mouseY,200,200); 
fill(255,5);
ellipse(mouseX,mouseY,300,300);
fill(255,5);
ellipse(mouseX,mouseY,500,500);
}}

