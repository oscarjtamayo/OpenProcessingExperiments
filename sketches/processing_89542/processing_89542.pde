
void setup(){
  size(500,500);
  background(255);
}
void draw(){
  //C
  noStroke();
  fill(123,185,196);
  quad(100,100,250,75,305,230,130,230);
  fill(0);
  quad(100,100,250,75,270,210,130,230); //"C" shadow
  //N
 fill(123,185,196);
  quad(260,100,380,100,410,250,240,240);
  fill(255);
  quad(260,100,380,100,390,230,240,240); //"N" shadow
 ellipse(180,150,100,100);
 fill(0);
 ellipse(180,150,40,40);
 rect(185,140,60,20);
 noStroke();
 quad(270,130,300,175,300,220,270,220);
 quad(270,130,350,200,350,225,290,175);
 quad(350,225,320,190,320,130,350,130);
}