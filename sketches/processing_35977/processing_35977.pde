
void setup(){
  size(500,500);
}

void draw(){
  strokeWeight(6);
  fill(70,70,80,255);
  rect(40,100,60,140);
  rect(500-40,100,-60,140);
  ellipse(250,60,300,80);
  rect(110,300,30,100);
  rect(500-110,300,-30,100);
  rect(60,60,500-120,260);
  fill(100,100,110,255);
  rect(100,300,500-200,130);
  fill(160);
  ellipse(150,130,100,90);
  rect(150-10,130-15,20,30);
  ellipse(500-150,130,100,90);
  rect(500-160,130-15,20,30);
  fill(100);
  ellipse(250,200,40,40);
  
  //ellipse(w/2, h/2, w*2/3, h*2/3);
  //line(w/3, h*2/3, w*2/3, h*2/3);
  //ellipse(w*3/5, h/2, 20, 20);
  //ellipse(w*2/5, h/2, 20, 20);
}

