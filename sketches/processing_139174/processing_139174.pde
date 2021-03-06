
void setup() {
  size(600,600);
  smooth();
}
 
void draw() {
  background(255);
   
  float x = mouseX;
  float y = mouseY;

   

  // chest
   fill(random(255),0,0);
   textSize(20);
   text("ERROR!",265, 450);
    
    
  strokeWeight(20);
  // head
  noFill();
  bezier(150,200,220,180,350,180,450,200);//top
  bezier(450,200,460,300,460,350,450,400);//right
  bezier(150,400,220,420,350,420,450,400);//bottom
  bezier(150,200,140,300,140,350,150,400);//left
     
  // body
  rect(250,415,100,100);
  //feet
  bezier (250,515,250,600,280,600,280,515);//left
  bezier (320,515,320,600,350,600,350,515);//right
  //arms
  bezier (200,415,200,500,x*0.6,y*0.5,x*0.6,y*0.8);//left
  bezier (400,415,400,500,x*0.8,y*0.5,x*0.8,y*0.8);//right
  //eyes
  fill(x, y, 20);
  ellipse(250,300,40,40);//left
  ellipse(350,300,80,80);//right
  noFill();
  strokeWeight(20);
 
  //teeth
  beginShape();
  vertex(210,360);
  vertex(370,360);

  vertex(350,380);
  vertex(330,365);
  vertex(310,380);
  vertex(290,365);
  endShape();

}


