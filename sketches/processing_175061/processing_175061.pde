
// Christmas card

/*input 
MOUSE
mousePressed():draw a shining star on the top of the tree


 KEYs
 keyPressed
 s or S:save screenshot png
 
*/

//Global variables
PImage christmasTree;
PImage santa;
color[] palette = {#FF0F03,#FF4603,#FF8103,#FFCD03,#FFE203,#FAFF03};
int counter=0;
 //setup() block
void setup() {
  size(800,600);
  christmasTree = loadImage("ct.jpg");
  santa = loadImage("sant.jpg");
 }
 //draw() block
void draw() {
  image (christmasTree, 0, 0);
 if (mousePressed) {
   fill(palette[int(random(6))]);
   textSize(48);
   textAlign(CENTER);
   text("Merry Christmas",width/2,70);
    image (santa, 650, 400);
// loop
for(counter=0;counter<100;counter++) {
   float x = random(width);
   float y = random(height);
  
   
strokeWeight(random(2));
stroke(palette[int(random(6))]);
line(395,110,x,y);


} 
fill(palette[int(random(6))]);
strokeWeight(0);
ellipse(395,110,20,20);

}
}
//key input
void keyPressed() {
  
  if (key=='s' || key=='S') saveFrame("screenshot.png"); 
  //if (key==DELETE || key==BACKSPACE) background(#000000);
}

