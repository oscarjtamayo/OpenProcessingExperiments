
   int xtam = 60;

void setup(){

  size(600,300);
  background(255);
}
void draw(){
   background(255);
  
  point(10,10);
  strokeWeight(5);
  stroke(255,0,0);
  line(15,1,mouseY,mouseX);
  
//  noStroke();
 // fill(200,100,0,70);
//  rect(mouseX,mouseY,200,50);
  noStroke();
  fill(250,0,200,80);
  triangle(300,200,mouseX+50,mouseY/2,20,mouseX);
   fill(100,150,0,80);
  //ellipse(mouseY+100,100,mouseX,200);
  
  rectMode(CENTER);
 
ellipse(mouseX,70,60,60);
    fill(0,50,120,100);
 
ellipse(mouseX-19,70,16,32);
ellipse(mouseX+19,70,16,32);
 //color de la figura en este segmento
  if ((mouseX < 200)&&(mouseX > 0)){
      fill(120,120,120,100);
  }
  if ((mouseX < 400)&&(mouseX > 200)){
  fill(120,120,120,100);   
  }
  if ((mouseX > 400)&&(mouseX < 600)){
      fill(120,120,120,100);
  }

ellipse(mouseX, mouseY,xtam,60);
  if ((mouseY < 150)&&(mouseY > 0)){
    xtam ++;
    
  }
  if ((mouseY < 300) && (mouseY > 150)){
    xtam--;
  }

}


