
//Skyline by Luis Silva

//setup
void setup(){
  size(900,300);
}

void draw(){
  background(80, 2, 64);
  
//Extra
  //moon
  fill(249, 255, 136);
  ellipse(810, 90, 200, 200);
//Buildings
//Back
  //1
  noStroke();
  fill(0);
  rect(10, 270, 50, 100);
  //2
  rect(100, 150, 100, 300);
  //3
  rect(370, 270, 200, 50);
  //4
  rect(740, 150, 100, 200);
//Mid
   //1
   fill(50);
   stroke(0);
   line(260, 20, 260, 200);
   line(280, 20, 280, 200);
   noStroke();
   rect(210, 50, 120, 250);
   //2
   stroke(0);
   line(825, 90, 825, 200);
   noStroke();
   rect(795, 125, 60, 200);
   //3
   rect(670, 225, 60, 100);
   //4
   rect(520, 215, 69, 100);
   //5
   rect(450, 200, 60, 100);
   //6
   rect(400, 250, 15, 50);
   //7
   stroke(0);
   line(75, 120, 75, 200);
   noStroke();
   rect(70, 155, 10, 25);
   quad(35, 190, 45, 170, 100, 170, 110, 190);
   rect(35, 190, 75, 150);
//Front
  //1
  fill(100);
  ellipse(180, 210, 50, 50);
  rect(120, 200, 115, 100);
  //2
  rect(300, 265, 90, 50);
  //3
  rect(620, 230, 25, 25);
  rect(580, 240, 95, 100);
  //4
   ellipse(728, 199, 35, 35);
   rect(703, 200, 50, 100);
   //5
   rect(780, 250, 50, 100);
   //6
   rect(850, 230, 50, 100);
   //7
   rect(-10, 250, 30, 100);
}

