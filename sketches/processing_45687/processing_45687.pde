
PImage img;
 
void setup(){
size(346,720);
 
img=loadImage("Marie.jpg");
}
 
void draw(){
image(img,0,0,mouseX,mouseY);
}

