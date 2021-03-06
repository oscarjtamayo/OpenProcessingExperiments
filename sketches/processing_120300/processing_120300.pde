
void setup()
{
  size(500,500);
}
 
void draw()
{
  background(255);
  
  pushMatrix();
  fill(0,150,0);
  ellipse(250, 250, 500, 500);
  popMatrix();
   
  translate(width/2,height/2);
  float sekunden = map (second (),0,60,0,360);
  float minuten = map (minute(),0,60,0,360);
  float stunden = map(hour(),0,12,0,360);
   
  pushMatrix();
  fill(255);
  noStroke();
  rect(-125,-125,250,250);
  popMatrix();
  pushMatrix();
  noStroke();
  fill(0);
  rotate(radians(sekunden));
  rect(0,-180,5,180);
  popMatrix();
  pushMatrix();
  noStroke();
  fill(0,0,0);
  rotate(radians(minuten));
  rect(0,-125,10,125);
  popMatrix();
  pushMatrix();
  noStroke();
  fill(0,0,0);
  rotate(radians(stunden));
  rect(0,-75,10,75);
  popMatrix();
  pushMatrix();
  fill(0,150,0);
  ellipse(0,0,30,30);
  popMatrix();
  pushMatrix();
  fill(0,150,0);
  noStroke();
  ellipse(0,0,15,15);
  popMatrix();
   for (int i=0; i<360; i+=30)
{
    pushMatrix();
    rotate(radians(i));
    translate(0,-230);
    fill(255);
    noStroke();
    ellipse(0, 0,10,10);
    popMatrix();
} 
}

