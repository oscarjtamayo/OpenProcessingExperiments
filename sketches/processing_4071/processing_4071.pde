
 int x = 500; 
  int y = int(random(0, 500)); 
int pause; 
PFont font; 
int menu = 1;
 PImage sky;
 void setup() {
 size(572, 432);
 
   font = loadFont("Chiller-Regular-48.vlw");
   
 }



 

 void draw() {
      

  sky=loadImage ("Fondo.jpg");   
  size(sky.width, sky.height); 
     image(sky, 0, 0);       
   smooth();
   if(menu == 1) { 
    background(0); 
    textFont(font, 40); 
    textAlign(CENTER); 
    text("Click para mirar las burbujas en el cielo", 280, 250); 
    noLoop(); 
    cursor(); 
     
   }       
  

    
   color c = get(mouseX, mouseY);
   float r = red(c);  
   stroke(255-r);
   line(mouseX, 0, mouseX, height);
   line(0, mouseY, width, mouseY);
   
    ellipse(mouseX, mouseY, 33, 33);
   noFill();
 fill(mouseY,mouseX,0,100); 
ellipse(500,425,mouseX,mouseX); 
fill(mouseY,0,mouseX,100); 
ellipse(100,125,mouseX-20,mouseX-20); 
fill(0,mouseY,0,100); 
ellipse(775,175,mouseY-40,mouseY-40); 
fill(0,mouseY,mouseX,100); 
ellipse(430,80,mouseY-60,mouseY-60); 
fill(mouseX,mouseY,0,90); 
ellipse(80,500,mouseX-80,mouseX-80); 
fill(mouseX,0,mouseY,90); 
ellipse(800,500,mouseY-100,mouseY-100); 
fill(0,mouseX,0,90); 
ellipse(225,350,mouseX-120,mouseX-120); 
fill(0,mouseX,mouseY,90); 
ellipse(250,550,mouseY-140,mouseY-140); 
fill(mouseY,mouseX,0,80); 
ellipse(600,30,mouseX-160,mouseX-160); 
fill(mouseX,mouseY,0,80); 
ellipse(580,180,mouseY-180,mouseY-180); 
fill(mouseX,0,0,80); 
ellipse(690,570,mouseX-200,mouseX-200); 
fill(mouseY,0,0,80); 
ellipse(870,390,mouseY-220,mouseY-220); 
fill(255,mouseX,255,70); 
ellipse(800,360,mouseX-240,mouseX-240); 
fill(0,mouseY,0,70); 
ellipse(300,250,mouseY-260,mouseY-260); 
fill(255,255,mouseX,70); 
ellipse(20,350,mouseX-280,mouseX-280); 
fill(255,255,mouseY,70); 
ellipse(90,370,mouseY-300,mouseY-300); 
fill(mouseX,255,mouseY,60); 
ellipse(280,30,mouseX-320,mouseX-320); 
fill(mouseX,255,255,60); 
ellipse(880,30,mouseY-340,mouseY-340); 
fill(mouseY,255,mouseX,60); 
ellipse(340,590,mouseX-360,mouseX-360); 
fill(mouseX,255,mouseY,60); 
ellipse(730,400,mouseY-380,mouseY-380); 
fill(255,mouseX,mouseY,50); 
ellipse(300,180,mouseX-400,mouseX-400); 
fill(mouseY,mouseX,255,50); 
ellipse(880,330,mouseY-420,mouseY-420); 
fill(255,mouseY,mouseX,50); 
ellipse(380,230,mouseX-440,mouseX-440); 
fill(mouseX,mouseY,255,50); 
ellipse(590,110,mouseY-460,mouseY-460); 
} 
 



 void mouseClicked() { 
  if(menu==1) { 
    loop(); 
    menu = 0; 
  } else {
    menu = 1;
  }
  

}







